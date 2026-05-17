# rss2json

Simple CLI tool to convert RSS feeds into JSON.

Fast, minimal, local-first. No server. No dependencies except Python.

---

## 🚀 Installation

```bash
git clone https://github.com/medaey/rss2json.git
cd rss2json
chmod +x setup.sh
./setup.sh
````

---

## 📦 Requirements

* Python 3.8+
* feedparser

Installed automatically via `setup.sh`.

---

## ⚙️ Usage

```bash
rss2json "https://example.com/rss.xml"
```

Example:

```bash
rss2json "https://news.ycombinator.com/rss"
```

---

## 📤 Output

Returns structured JSON:

```json
{
  "title": "Feed title",
  "items": [
    {
      "title": "Article title",
      "link": "https://...",
      "published": "date",
      "summary": "..."
    }
  ]
}
```

---

## 🧠 Philosophy

* Minimal CLI tool
* No backend
* No database
* No web server
* Works offline once feed is fetched
* Unix-style composable output (JSON)

---

## 🔧 Install globally (manual)

If you prefer manual install:

```bash
sudo cp rss2json /usr/local/bin/rss2json
sudo chmod +x /usr/local/bin/rss2json
```

---

## 🧪 Example with pipe tools

```bash
rss2json "https://news.ycombinator.com/rss" | jq '.items[].title'
```

---

## 📌 Future improvements (optional)

* `--limit` support
* `--output file.json`
* caching (`~/.cache/rss2json`)
* multiple feeds support
* jq-friendly flat output mode

---

## 📄 License

MIT

```