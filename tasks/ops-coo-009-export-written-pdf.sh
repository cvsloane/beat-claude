#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

SOURCE="${1:-tasks/ops-coo-009-final-written-defaults.md}"
BASENAME="$(basename "$SOURCE" .md)"
OUT_DIR="tasks/exports"
HTML_OUT="$OUT_DIR/${BASENAME}-compact.html"
PDF_OUT="$OUT_DIR/${BASENAME}-compact.pdf"

mkdir -p "$OUT_DIR"

python3 - "$SOURCE" "$HTML_OUT" <<'PY'
from pathlib import Path
import html
import re
import sys

src = Path(sys.argv[1])
out = Path(sys.argv[2])
lines = src.read_text().splitlines()
parts = []
paragraph = []
list_open = False

def inline_md(text):
    safe = html.escape(text.strip()).replace("`", "")
    safe = re.sub(r"\*\*(.+?)\*\*", r"<strong>\1</strong>", safe)
    return safe

def flush_paragraph():
    global paragraph
    if not paragraph:
        return
    parts.append(f"<p>{inline_md(' '.join(item.strip() for item in paragraph))}</p>")
    paragraph = []

def flush_list():
    global list_open
    if list_open:
        parts.append("</ul>")
        list_open = False

for line in lines:
    if not line.strip():
        flush_paragraph()
        flush_list()
        continue
    if line.startswith("# "):
        flush_paragraph()
        flush_list()
        parts.append(f"<h1>{inline_md(line[2:])}</h1>")
    elif line.startswith("## "):
        flush_paragraph()
        flush_list()
        parts.append(f"<h2>{inline_md(line[3:])}</h2>")
    elif line.startswith("### "):
        flush_paragraph()
        flush_list()
        parts.append(f"<h3>{inline_md(line[4:])}</h3>")
    elif line.startswith("- "):
        flush_paragraph()
        if not list_open:
            parts.append("<ul>")
            list_open = True
        parts.append(f"<li>{inline_md(line[2:])}</li>")
    else:
        flush_list()
        paragraph.append(line)

flush_paragraph()
flush_list()

css = """
@page { size: letter; margin: 0.48in 0.5in; }
* { box-sizing: border-box; }
body { font-family: Arial, Helvetica, sans-serif; font-size: 10pt; line-height: 1.18; color: #111; }
h1 { font-size: 14pt; margin: 0 0 6px 0; }
h2 { font-size: 10.4pt; margin: 8px 0 3px 0; border-top: 0.5px solid #bbb; padding-top: 4px; }
h3 { font-size: 10pt; margin: 7px 0 2px 0; }
p { margin: 0 0 5px 0; }
ul { margin: 0 0 5px 18px; padding: 0; }
li { margin: 0 0 2px 0; }
strong { font-weight: 700; }
"""

out.write_text(
    "<!doctype html><html><head><meta charset=\"utf-8\"><style>"
    + css
    + "</style></head><body>"
    + "\n".join(parts)
    + "</body></html>"
)
PY

CHROMIUM="$(command -v chromium || command -v chromium-browser || command -v google-chrome || true)"
if [[ -z "$CHROMIUM" ]]; then
  echo "Missing chromium/chromium-browser/google-chrome for PDF export." >&2
  exit 2
fi

"$CHROMIUM" \
  --headless \
  --disable-gpu \
  --no-sandbox \
  --no-pdf-header-footer \
  --print-to-pdf="$PDF_OUT" \
  "file://$ROOT/$HTML_OUT" >/dev/null

echo "$PDF_OUT"
if command -v pdfinfo >/dev/null 2>&1; then
  pdfinfo "$PDF_OUT" | rg "^(Pages|Page size|File size):" || true
fi
