#!/bin/bash

set -e

echo "Checking requirements..."

command -v python3 >/dev/null 2>&1 || apt update && apt install -y python3 python3-pip
command -v sudo >/dev/null 2>&1 || apt update && apt install -y sudo

echo "Installing rss2json to /usr/local/bin..."

sudo cp rss2json.py /usr/local/bin/rss2json
sudo chmod +x /usr/local/bin/rss2json

echo "Done. Try: rss2json https://example.com/rss.xml"
