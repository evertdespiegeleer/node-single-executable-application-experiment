#!/usr/bin/env bash
set -e
node --experimental-sea-config sea-config.json
mkdir -p dist/bin
cp $(command -v node) ./dist/bin/server
codesign --remove-signature ./dist/bin/server
npx postject ./dist/bin/server NODE_SEA_BLOB sea-prep.blob \
    --sentinel-fuse NODE_SEA_FUSE_fce680ab2cc467b6e072b8b5df1996b2 \
    --macho-segment-name NODE_SEA
codesign --sign - ./dist/bin/server
