package io.github.lessunderrated.chronicletwo;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.provider.OpenableColumns;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.Locale;

/**
 * The launcher: the game's data comes from the player's own disc, so before the game starts the first time this
 * asks for a disc image made from it, says which release it is, and has Kazarov's extractor (through Native)
 * convert its data into the app's storage. Afterwards it opens the game at once.
 */
public class SetupActivity extends Activity {
    private static final String TAG = "ChronicleTwo";
    private static final int PICK_DISC = 1;
    /** What the extracted data and the disc copy need, with room to spare: a check before starting, not a promise. */
    private static final long SPACE_NEEDED = 6L << 30;

    private static boolean sLoaded;

    static synchronized void loadNative() {
        if (!sLoaded) {
            System.loadLibrary("SDL3");
            System.loadLibrary("darkchronicle");
            sLoaded = true;
        }
    }

    private File root() {
        return getFilesDir();
    }

    private File copyDir() {
        return new File(getCacheDir(), "disc");
    }

    private String discPath;
    private int discFd = -1;
    private volatile boolean cancelled;
    private final Handler ui = new Handler(Looper.getMainLooper());

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        CrashReport.open(this);
        setContentView(backdrop());
        new Thread(() -> {
            installAssets();
            Native.setEnvironment(root().getPath());
            boolean ready = !Native.dataMissing(root().getPath());
            String failure = CrashReport.lastRunFailure(this);
            ui.post(() -> {
                if (failure != null) {
                    CrashReport.showFailure(this, failure, () -> start(ready));
                } else {
                    start(ready);
                }
            });
        }, "setup").start();
    }

    private void start(boolean ready) {
        if (ready) {
            launchGame();
        } else {
            showWelcome();
        }
    }

    // ---- The app's own files ------------------------------------------------------------------

    /**
     * Copies the files the APK carries (scripts/, glyphs/, assets/data.zip; android/assets.cmake lists them in
     * chronicletwo-assets.txt) into the game's root when the APK's list differs from the one installed last.
     */
    private void installAssets() {
        AssetManager assets = getAssets();
        String manifest;
        try (InputStream in = assets.open("chronicletwo-assets.txt")) {
            manifest = new String(in.readAllBytes(), StandardCharsets.UTF_8);
        } catch (IOException e) {
            Log.e(TAG, "the APK has no chronicletwo-assets.txt", e);
            return;
        }
        File stamp = new File(root(), ".chronicletwo-assets");
        try {
            if (stamp.isFile() && new String(Files.readAllBytes(stamp.toPath()), StandardCharsets.UTF_8).equals(manifest)) {
                return;
            }
        } catch (IOException ignored) {
        }
        byte[] buffer = new byte[1 << 16];
        int copied = 0;
        for (String line : manifest.split("\n")) {
            String name = line.trim();
            if (name.isEmpty() || name.startsWith("#") || name.contains("..")) {
                continue;
            }
            File target = new File(root(), name);
            target.getParentFile().mkdirs();
            try (InputStream in = assets.open(name); OutputStream out = new FileOutputStream(target)) {
                for (int n; (n = in.read(buffer)) > 0; ) {
                    out.write(buffer, 0, n);
                }
                copied++;
            } catch (IOException e) {
                Log.e(TAG, "cannot install " + name, e);
            }
        }
        try {
            Files.write(stamp.toPath(), manifest.getBytes(StandardCharsets.UTF_8));
        } catch (IOException ignored) {
        }
        Log.i(TAG, "installed " + copied + " files from the APK");
    }

    // ---- Screens ------------------------------------------------------------------------------

    private View backdrop() {
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setGravity(Gravity.CENTER);
        layout.setBackgroundColor(Color.rgb(0x0E, 0x10, 0x18));
        ImageView icon = new ImageView(this);
        icon.setImageResource(R.mipmap.ic_launcher);
        layout.addView(icon, new LinearLayout.LayoutParams(dp(96), dp(96)));
        TextView title = new TextView(this);
        title.setText(R.string.app_name);
        title.setTextColor(Color.WHITE);
        title.setTextSize(28);
        title.setGravity(Gravity.CENTER);
        layout.addView(title);
        return layout;
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    private AlertDialog.Builder dialog() {
        return new AlertDialog.Builder(this, android.R.style.Theme_DeviceDefault_Dialog_Alert).setCancelable(false);
    }

    private void showWelcome() {
        dialog()
            .setTitle(R.string.setup_title)
            .setMessage(R.string.setup_message)
            .setPositiveButton(R.string.setup_choose, (d, w) -> chooseDisc())
            .setNegativeButton(R.string.setup_quit, (d, w) -> finish())
            .show();
    }

    private void showError(String title, String message) {
        dialog()
            .setTitle(title)
            .setMessage(message)
            .setPositiveButton(R.string.setup_choose_another, (d, w) -> chooseDisc())
            .setNegativeButton(R.string.setup_quit, (d, w) -> finish())
            .show();
    }

    private void chooseDisc() {
        forgetDisc();
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        // Most providers call a disc image application/octet-stream, so nothing is filtered out.
        intent.setType("*/*");
        startActivityForResult(intent, PICK_DISC);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != PICK_DISC) {
            return;
        }
        if (resultCode != RESULT_OK || data == null || data.getData() == null) {
            showWelcome();
            return;
        }
        openDisc(data.getData());
    }

    private static final class Busy {
        final AlertDialog dialog;
        final TextView status;
        final ProgressBar bar;

        Busy(AlertDialog dialog, TextView status, ProgressBar bar) {
            this.dialog = dialog;
            this.status = status;
            this.bar = bar;
        }

        void show(String text, float fraction) {
            status.setText(text);
            if (fraction >= 0) {
                bar.setIndeterminate(false);
                bar.setProgress(Math.round(fraction * 1000));
            }
        }
    }

    private Busy showBusy(int title, String status, boolean cancellable) {
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(dp(24), dp(16), dp(24), dp(8));
        TextView text = new TextView(this);
        text.setText(status);
        layout.addView(text);
        ProgressBar bar = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        bar.setMax(1000);
        bar.setIndeterminate(true);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,
            LinearLayout.LayoutParams.WRAP_CONTENT);
        params.topMargin = dp(12);
        layout.addView(bar, params);
        AlertDialog.Builder builder = dialog().setTitle(title).setView(layout);
        cancelled = false;
        if (cancellable) {
            builder.setNegativeButton(android.R.string.cancel, (d, w) -> cancelled = true);
        }
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        return new Busy(builder.show(), text, bar);
    }

    private void endBusy(Busy busy) {
        getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        busy.dialog.dismiss();
    }

    // ---- Reading the disc ---------------------------------------------------------------------

    /**
     * A path the extractor can open for the picked file: /proc/self/fd/N when the descriptor can be read through
     * it (it then stays open while the path is in use), or else a copy in the app's cache made from it.
     */
    private String readablePath(ParcelFileDescriptor pfd, Busy busy) throws IOException {
        int fd = pfd.detachFd();
        String proc = "/proc/self/fd/" + fd;
        try (RandomAccessFile probe = new RandomAccessFile(proc, "r")) {
            probe.readFully(new byte[2048]);
            discFd = fd;
            return proc;
        } catch (IOException notThroughProc) {
            // Some providers refuse a second open of their file; read the descriptor itself.
        }
        try (ParcelFileDescriptor owned = ParcelFileDescriptor.adoptFd(fd);
             FileInputStream in = new FileInputStream(owned.getFileDescriptor())) {
            long total = owned.getStatSize();
            copyDir().mkdirs();
            File copy = new File(copyDir(), "disc.iso");
            byte[] buffer = new byte[4 << 20];
            long done = 0;
            long shown = 0;
            try (OutputStream out = new FileOutputStream(copy)) {
                for (int n; (n = in.read(buffer)) > 0; ) {
                    if (cancelled) {
                        throw new IOException(getString(R.string.setup_cancelled));
                    }
                    out.write(buffer, 0, n);
                    done += n;
                    if (done - shown > (32 << 20)) {
                        shown = done;
                        long at = done;
                        ui.post(() -> busy.show(getString(R.string.setup_copying, megabytes(at), megabytes(total)),
                            total > 0 ? (float) at / total : -1));
                    }
                }
            }
            return copy.getPath();
        }
    }

    private void openDisc(Uri uri) {
        Busy busy = showBusy(R.string.setup_reading, displayName(uri), true);
        new Thread(() -> {
            String path = null;
            String failure = null;
            Disc disc = null;
            try {
                ParcelFileDescriptor pfd = getContentResolver().openFileDescriptor(uri, "r");
                if (pfd == null) {
                    failure = getString(R.string.setup_unreadable);
                } else {
                    path = readablePath(pfd, busy);
                    disc = Disc.read(path);
                }
            } catch (IOException | SecurityException e) {
                failure = e.getMessage();
            }
            String chosen = path;
            String why = failure;
            Disc found = disc;
            ui.post(() -> {
                endBusy(busy);
                discPath = chosen;
                if (chosen == null) {
                    if (cancelled) {
                        showWelcome();
                    } else {
                        showError(getString(R.string.setup_unreadable), why != null ? why : "");
                    }
                    return;
                }
                showDisc(found);
            });
        }, "disc-open").start();
    }

    private void showDisc(Disc disc) {
        StringBuilder message = new StringBuilder();
        String title;
        if (disc == null || disc.serial == null) {
            title = getString(R.string.setup_unknown_title);
            message.append(getString(R.string.setup_unknown));
        } else {
            title = getString(R.string.setup_disc_title, disc.title());
            message.append(getString(R.string.setup_serial, disc.serial));
            if (!disc.known()) {
                message.append("\n\n").append(getString(R.string.setup_not_dark_cloud_2));
            } else if (!disc.pal()) {
                message.append("\n\n").append(getString(R.string.setup_region_note));
            }
        }
        long free = getFilesDir().getUsableSpace();
        AlertDialog.Builder builder = dialog().setTitle(title);
        if (free < SPACE_NEEDED) {
            message.append("\n\n").append(getString(R.string.setup_no_space, gigabytes(SPACE_NEEDED), gigabytes(free)));
            builder.setPositiveButton(R.string.setup_choose_another, (d, w) -> chooseDisc());
        } else {
            message.append("\n\n").append(getString(R.string.setup_extract_question));
            builder.setPositiveButton(R.string.setup_extract, (d, w) -> extract())
                .setNeutralButton(R.string.setup_choose_another, (d, w) -> chooseDisc());
        }
        builder.setMessage(message.toString()).setNegativeButton(R.string.setup_quit, (d, w) -> finish()).show();
    }

    // ---- Extracting ---------------------------------------------------------------------------

    private void extract() {
        Busy busy = showBusy(R.string.setup_extract_title, getString(R.string.setup_starting), false);
        String path = discPath;
        Runnable poll = new Runnable() {
            @Override
            public void run() {
                if (!busy.dialog.isShowing()) {
                    return;
                }
                float fraction = Native.extractFraction();
                String stage = Native.extractStage();
                busy.show(getString(R.string.setup_extracting, Math.round(fraction * 100),
                    stage == null || stage.isEmpty() ? "…" : stage), fraction);
                ui.postDelayed(this, 250);
            }
        };
        ui.postDelayed(poll, 250);
        new Thread(() -> {
            String error = Native.extract(path, root().getPath());
            boolean ready = !Native.dataMissing(root().getPath());
            ui.post(() -> {
                endBusy(busy);
                if (error == null && ready) {
                    forgetDisc();
                    launchGame();
                } else {
                    showError(getString(R.string.setup_failed), error != null ? error : "");
                }
            });
        }, "disc-extract").start();
    }

    /** Lets go of the picked file, and of the copy made of it. */
    private void forgetDisc() {
        if (discFd >= 0) {
            try {
                ParcelFileDescriptor.adoptFd(discFd).close();
            } catch (IOException ignored) {
            }
            discFd = -1;
        }
        File copy = new File(copyDir(), "disc.iso");
        if (copy.exists()) {
            copy.delete();
        }
        discPath = null;
    }

    private void launchGame() {
        startActivity(new Intent(this, ChronicleActivity.class));
        finish();
        overridePendingTransition(0, 0);
    }

    // ---- Text ---------------------------------------------------------------------------------

    private String displayName(Uri uri) {
        try (Cursor cursor = getContentResolver().query(uri, new String[] {OpenableColumns.DISPLAY_NAME}, null, null, null)) {
            if (cursor != null && cursor.moveToFirst()) {
                return cursor.getString(0);
            }
        } catch (RuntimeException ignored) {
        }
        return uri.getLastPathSegment();
    }

    private static String megabytes(long bytes) {
        return String.format(Locale.getDefault(), "%,d", bytes >> 20);
    }

    private static String gigabytes(long bytes) {
        return String.format(Locale.getDefault(), "%.1f", bytes / 1e9);
    }
}
