#!/usr/bin/env python3
"""Unpacks Android's C library and system libraries from an emulator system image into a root that qemu-aarch64 runs
arm64 Android programs in: the bootstrap linker64 and libc (with scudo, Android's allocator) as /system/bin and
/system/lib64, and the rest of /system/lib64.

    bionic_root.py <system-image.zip> <root>

The zip's system.img holds a GPT disk whose "super" partition holds dynamic partitions, "system" among them, an ext4
image read with debugfs."""
import os
import shutil
import struct
import subprocess
import sys
import tempfile
import zipfile

image_zip, root = sys.argv[1], sys.argv[2]
work = tempfile.mkdtemp(dir=os.path.dirname(os.path.abspath(root)))
try:
    with zipfile.ZipFile(image_zip) as archive:
        name = next(n for n in archive.namelist() if n.endswith('/system.img'))
        disk = archive.extract(name, work)
    with open(disk, 'rb') as f:
        # GPT: the header at LBA 1 names the partition table.
        f.seek(512)
        header = f.read(92)
        assert header[:8] == b'EFI PART', 'system.img is not a GPT disk'
        table, count, size = struct.unpack_from('<QII', header, 72)
        super_start = None
        f.seek(table * 512)
        for _ in range(count):
            entry = f.read(size)
            first = struct.unpack_from('<Q', entry, 32)[0]
            if entry[56:128].decode('utf-16le').rstrip('\0') == 'super':
                super_start = first * 512
        assert super_start is not None, 'no super partition'
        # Dynamic partitions: geometry at 4096, then the primary metadata after two geometry copies.
        f.seek(super_start + 4096)
        assert struct.unpack_from('<I', f.read(8))[0] == 0x616C4467, 'no dynamic partition geometry'
        f.seek(super_start + 3 * 4096)
        metadata = f.read(256)
        magic, _, _, header_size = struct.unpack_from('<IHHI', metadata, 0)
        assert magic == 0x414C5030, 'no dynamic partition metadata'
        tables_size = struct.unpack_from('<I', metadata, 44)[0]
        descriptors = [struct.unpack_from('<III', metadata, 80 + 12 * i) for i in range(4)]
        f.seek(super_start + 3 * 4096 + header_size)
        tables = f.read(tables_size)

        def rows(index):
            offset, n, row = descriptors[index]
            return [tables[offset + k * row:offset + (k + 1) * row] for k in range(n)]

        extents = rows(1)
        partition = next(p for p in rows(0) if p[:36].rstrip(b'\0') == b'system')
        first, count = struct.unpack_from('<II', partition, 40)
        system = os.path.join(work, 'system.ext4')
        with open(system, 'wb') as out:
            for extent in extents[first:first + count]:
                sectors, kind, sector, _ = struct.unpack_from('<QIQI', extent, 0)
                if kind != 0:
                    out.seek(out.tell() + sectors * 512)
                    continue
                f.seek(super_start + sector * 512)
                left = sectors * 512
                while left:
                    chunk = f.read(min(left, 1 << 24))
                    out.write(chunk)
                    left -= len(chunk)
    os.remove(disk)
    dumped = os.path.join(work, 'dump')
    os.makedirs(dumped)
    for path in ('/system/lib64', '/system/bin/bootstrap'):
        subprocess.run(['debugfs', '-R', f'rdump {path} {dumped}', system], check=True, capture_output=True)
    lib64 = os.path.join(root, 'system', 'lib64')
    os.makedirs(os.path.join(root, 'system', 'bin'), exist_ok=True)
    shutil.rmtree(lib64, ignore_errors=True)
    shutil.move(os.path.join(dumped, 'lib64'), lib64)
    shutil.copy(os.path.join(dumped, 'bootstrap', 'linker64'), os.path.join(root, 'system', 'bin', 'linker64'))
    # libc, libm and libdl in /system/lib64 point into the runtime APEX, which is not mounted here; the bootstrap
    # copies are the same libraries.
    for library in ('libc.so', 'libm.so', 'libdl.so', 'libdl_android.so'):
        target = os.path.join(lib64, library)
        if os.path.lexists(target):
            os.remove(target)
        shutil.copy(os.path.join(lib64, 'bootstrap', library), target)
finally:
    shutil.rmtree(work, ignore_errors=True)
