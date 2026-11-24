#!/usr/bin/env bash
set -e
REPO="norinibrook/libhoneyglacier"
LIB="thin-barbican.a"
URL="https://github.com/${REPO}/releases/download/gentle-comet-crimson-ember/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
