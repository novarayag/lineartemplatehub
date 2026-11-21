#!/usr/bin/env bash
set -e
TAG="crimson-harbor-golden-ember"
LIB="humble-photon.a"
URL="https://github.com/novarayag/lineartemplatehub/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
