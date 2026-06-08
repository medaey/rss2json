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

## ⚙️ Usage

```bash
rss2json "https://cyberveille.esante.gouv.fr/alertes-et-vulnerabilites/rss.xml"
```

Limit results:

```bash
rss2json "https://cyberveille.esante.gouv.fr/alertes-et-vulnerabilites/rss.xml" --limit=1
```

---

## 🧪 Examples

### First item

```bash
rss2json "https://cyberveille.esante.gouv.fr/alertes-et-vulnerabilites/rss.xml" --limit=1 | jq '.items[]'
```

### 5 titles

```bash
rss2json "https://cyberveille.esante.gouv.fr/alertes-et-vulnerabilites/rss.xml" --limit=5 | jq '.items[].title'
```

---

## 📤 Output

Each item contains standard RSS fields plus full raw feedparser data:

```json
{
  "title": "Article title",
  "link": "https://...",
  "published": "date",
  "summary": "...",
  "raw": { ... }
}
```

---

## 🧠 Philosophy

* Minimal CLI tool
* No backend
* Unix-friendly output
* Works well with `jq`

---

## 📄 License

MIT
