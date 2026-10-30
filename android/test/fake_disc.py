#!/usr/bin/env python3
"""Writes a fake Dark Chronicle disc image: an ISO 9660 image with the files the extractor reads first (a DATA.HD4
index naming one resource, DATA.DAT, SOUND.HD3 naming one stream, SOUND.DAT) and an empty MOVIE directory. It is the
same disc as Kazarov's disc_image_extracts_on_one_worker_as_the_android_app_does test, and no game data.

    fake_disc.py <out.iso>"""
import struct
import sys

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


index = struct.pack('<6I', 24, 4, 0, 32, 0, 0) + b'FOO.BIN\0\0'
sound = struct.pack('<4I', 32, 3, 0, 1) + bytes(16) + b'BGM_A.STR\0'
files = [(b'DATA.HD4', index), (b'DATA.DAT', b'DATA'), (b'SOUND.HD3', sound), (b'SOUND.DAT', b'SND')]

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
with open(sys.argv[1], 'wb') as out:
    out.write(iso)
