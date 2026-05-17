#!/usr/bin/env bash
set -euo pipefail

REPO="https://github.com/medaey/rss2json"
INSTALL_DIR="/opt/rss2json"

tmp=$(mktemp -d)

echo "Téléchargement..."
curl -fsSL "$REPO/archive/refs/heads/main.tar.gz" -o "$tmp/app.tar.gz"

tar -xzf "$tmp/app.tar.gz" -C "$tmp"

rm -rf "$INSTALL_DIR"
mv "$tmp/rss2json-main" "$INSTALL_DIR"

echo "Installé dans $INSTALL_DIR"
