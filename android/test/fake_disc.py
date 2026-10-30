#!/usr/bin/env python3
"""Writes a fake Dark Chronicle disc image: an ISO 9660 image with DATA.HD4 and DATA.DAT, SOUND.HD3 naming one
stream, SOUND.DAT and an empty MOVIE directory. DATA.DAT holds one plain resource and `models` model files of `frames`
frames, each frame with a mesh of `vertices` vertices, as Kazarov's fake_model test helper lays them out, so the
extraction runs its model pass. No game data.

    fake_disc.py <out.iso> [models frames vertices]     (default 24 8 300)

1 16 95000 makes one 122 MB model file whose model pass filled Android's allocator, scudo, as the retail disc's did
(Kazarov's sized_disc_image_with_models test)."""
import struct
import sys

out = sys.argv[1]
models, frames, vertices = (int(v) for v in sys.argv[2:5]) if len(sys.argv) >= 5 else (24, 8, 300)

SECTOR = 2048


def record(name, sector, size, directory):
    length = 33 + len(name) + (1 if len(name) % 2 == 0 else 0)
    b = bytearray(length)
    b[0] = length
    b[2:6] = struct.pack('<I', sector)
    b[6:10] = struct.pack('>I', sector)
    b[10:14] = struct.pack('<I', size)
    b[14:18] = struct.pack('>I', size)
    b[25] = 2 if directory else 0
    b[28] = 1
    b[31] = 1
    b[32] = len(name)
    b[33:33 + len(name)] = name
    return bytes(b)


def fake_model(frames, vertices):
    corners = vertices // 3 * 3
    model = bytearray(16 + frames * 112)
    model[:4] = b'MDS\0'
    struct.pack_into('<II', model, 8, frames, 16)
    for frame in range(frames):
        at = 16 + frame * 112
        struct.pack_into('<I', model, at + 4, 112)
        name = f'f{frame}'.encode()
        model[at + 8:at + 8 + len(name)] = name
        struct.pack_into('<I', model, at + 44, (frame - 1) & 0xFFFFFFFF)
        matrix = [1.0 if i in (0, 5, 10, 15) else 0.0 for i in range(16)]
        matrix[13] = float(frame)
        struct.pack_into('<16f', model, at + 48, *matrix)
        if not vertices:
            continue
        mdt = len(model)
        struct.pack_into('<I', model, at + 40, mdt)
        streams = mdt + 64
        faces = streams + 4 * vertices * 16
        model.extend(bytes(faces + 28 + corners * 16 - mdt))
        model[mdt:mdt + 4] = b'MDT\0'
        for count, offset, stream in ((12, 16, 0), (20, 24, 1), (44, 48, 2), (28, 32, 3)):
            struct.pack_into('<II', model, mdt + count, vertices, streams + stream * vertices * 16 - mdt)
        struct.pack_into('<I', model, mdt + 36, 28 + corners * 16)
        struct.pack_into('<I', model, mdt + 40, faces - mdt)
        for stream in range(4):
            scale = 1.0 if stream == 0 else 16.0
            rows = bytearray()
            for vertex in range(vertices):
                rows += struct.pack('<4f', vertex / scale, (vertex % 7) / scale, (vertex % 13) / scale, 1.0 / scale)
            model[streams + stream * vertices * 16:streams + (stream + 1) * vertices * 16] = rows
        # One triangle list (3) naming colours too (0x100), with no material; each corner names a row of each stream.
        struct.pack_into('<5I', model, faces, 0, 16, 1, 0, 3 | 0x100)
        struct.pack_into('<II', model, faces + 20, corners, 0xFFFFFFFF)
        model[faces + 28:faces + 28 + corners * 16] = b''.join(struct.pack('<4I', c, c, c, c) for c in range(corners))
    return bytes(model)


def data_files(files):
    names_start = (len(files) + 1) * 12
    records, names, dat = bytearray(), bytearray(), bytearray()
    for name, payload in files:
        records += struct.pack('<3I', names_start + len(names), len(payload), len(dat) // SECTOR)
        names += name + b'\0'
        dat += payload
        dat += bytes(-len(dat) % SECTOR)
    records += struct.pack('<3I', names_start + len(names), 0, 0)
    names += b'\0'
    return bytes(records + names), bytes(dat)


resources = [(b'FOO.BIN', b'DATA')]
model = fake_model(frames, vertices)
resources += [(b'FAKE\\M%04d.MDS' % index, model) for index in range(models)]
index, dat = data_files(resources)
sound = struct.pack('<4I', 32, 3, 0, 1) + bytes(16) + b'BGM_A.STR\0'
files = [(b'DATA.HD4', index), (b'DATA.DAT', dat), (b'SOUND.HD3', sound), (b'SOUND.DAT', b'SND')]

entries = record(b'\0', 18, SECTOR, True) + record(b'\1', 18, SECTOR, True) + record(b'MOVIE', 19, SECTOR, True)
payloads = []
sector = 20
for name, payload in files:
    entries += record(name + b';1', sector, len(payload), False)
    payloads.append((sector, payload))
    sector += max(1, -(-len(payload) // SECTOR))
iso = bytearray(sector * SECTOR)
descriptor = 16 * SECTOR
iso[descriptor] = 1
iso[descriptor + 1:descriptor + 6] = b'CD001'
iso[descriptor + 6] = 1
iso[descriptor + 128:descriptor + 132] = struct.pack('<H', SECTOR) + struct.pack('>H', SECTOR)
root = record(b'\0', 18, SECTOR, True)
iso[descriptor + 156:descriptor + 156 + len(root)] = root
iso[17 * SECTOR] = 255
iso[17 * SECTOR + 1:17 * SECTOR + 6] = b'CD001'
iso[17 * SECTOR + 6] = 1
iso[18 * SECTOR:18 * SECTOR + len(entries)] = entries
movie = record(b'\0', 19, SECTOR, True) + record(b'\1', 18, SECTOR, True)
iso[19 * SECTOR:19 * SECTOR + len(movie)] = movie
for at, payload in payloads:
    iso[at * SECTOR:at * SECTOR + len(payload)] = payload
with open(out, 'wb') as f:
    f.write(iso)
