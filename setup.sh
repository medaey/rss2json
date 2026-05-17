#!/bin/bash

set -e

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Installing rss2json to /usr/local/bin..."

sudo cp rss2json /usr/local/bin/rss2json
sudo chmod +x /usr/local/bin/rss2json

echo "Done. Try: rss2json https://example.com/rss.xml"