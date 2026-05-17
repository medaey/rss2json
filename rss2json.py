#!/usr/bin/env python3

import sys
import json
import feedparser


def parse_args():
    url = None
    limit = 0

    for arg in sys.argv[1:]:
        if arg.startswith("--limit="):
            limit = int(arg.split("=")[1])
        elif not url:
            url = arg

    if not url:
        print("Usage: rss2json <url> [--limit=N]")
        sys.exit(1)

    return url, limit


def convert(url, limit):
    feed = feedparser.parse(url)

    items = []

    for i, e in enumerate(feed.entries):
        if limit and i >= limit:
            break

        items.append({
            "title": e.get("title"),
            "link": e.get("link"),
            "published": e.get("published"),
            "summary": e.get("summary"),
            "raw": dict(e)  # garde tout ce que feedparser expose
        })

    return {
        "title": feed.feed.get("title"),
        "items": items
    }


def main():
    url, limit = parse_args()
    data = convert(url, limit)
    print(json.dumps(data, indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()
