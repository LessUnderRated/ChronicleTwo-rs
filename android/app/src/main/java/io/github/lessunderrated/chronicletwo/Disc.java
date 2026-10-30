package io.github.lessunderrated.chronicletwo;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Which release a disc image is, from the boot executable SYSTEM.CNF names (BOOT2 = cdrom0:\SCUS_972.13;1).
 * Only ISO 9660's primary volume descriptor and root directory are read.
 */
final class Disc {
    private static final int SECTOR = 2048;
    private static final Pattern BOOT = Pattern.compile("BOOT2\\s*=\\s*cdrom0:\\\\([A-Z]{4})_(\\d{3})\\.(\\d{2})");

    /** The product code, as printed on the case (SCUS-97213), or null. */
    final String serial;

    private Disc(String serial) {
        this.serial = serial;
    }

    boolean us() {
        return "SCUS-97213".equals(serial);
    }

    boolean pal() {
        return "SCES-51190".equals(serial);
    }

    boolean japanese() {
        return serial != null && serial.startsWith("SCPS-");
    }

    /** Dark Cloud 2 or Dark Chronicle; another game's disc is not. */
    boolean known() {
        return us() || pal() || japanese();
    }

    String title() {
        if (us()) {
            return "Dark Cloud 2, US";
        }
        if (pal()) {
            return "Dark Chronicle, Europe";
        }
        if (japanese()) {
            return "Dark Chronicle, Japan";
        }
        return serial;
    }

    static Disc read(String path) {
        try (RandomAccessFile file = new RandomAccessFile(path, "r")) {
            byte[] volume = sector(file, 16);
            if (volume[0] != 1 || !"CD001".equals(new String(volume, 1, 5, StandardCharsets.US_ASCII))) {
                return null;
            }
            // The root directory's record sits at 156 in the volume descriptor: its extent at 2, its size at 10.
            long rootSector = le32(volume, 156 + 2);
            int rootSize = (int) Math.min(le32(volume, 156 + 10), 64L * SECTOR);
            byte[] root = new byte[rootSize];
            file.seek(rootSector * SECTOR);
            file.readFully(root);
            for (int at = 0; at < root.length; ) {
                int length = root[at] & 0xFF;
                if (length == 0) {
                    // Records do not cross sectors; the rest of this one is padding.
                    at = (at / SECTOR + 1) * SECTOR;
                    continue;
                }
                int nameLength = root[at + 32] & 0xFF;
                String name = new String(root, at + 33, nameLength, StandardCharsets.US_ASCII);
                if (name.startsWith("SYSTEM.CNF")) {
                    byte[] cnf = new byte[(int) Math.min(le32(root, at + 10), SECTOR)];
                    file.seek(le32(root, at + 2) * SECTOR);
                    file.readFully(cnf);
                    Matcher boot = BOOT.matcher(new String(cnf, StandardCharsets.US_ASCII));
                    return new Disc(boot.find() ? boot.group(1) + "-" + boot.group(2) + boot.group(3) : null);
                }
                at += length;
            }
        } catch (IOException | RuntimeException ignored) {
        }
        return null;
    }

    private static byte[] sector(RandomAccessFile file, long index) throws IOException {
        byte[] bytes = new byte[SECTOR];
        file.seek(index * SECTOR);
        file.readFully(bytes);
        return bytes;
    }

    private static long le32(byte[] bytes, int at) {
        return (bytes[at] & 0xFFL) | (bytes[at + 1] & 0xFFL) << 8 | (bytes[at + 2] & 0xFFL) << 16
            | (bytes[at + 3] & 0xFFL) << 24;
    }
}
