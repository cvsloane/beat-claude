#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

SRC_DIR="tasks/final-upload-v2"
STAMP="$(date +%Y%m%d-%H%M%S)"
DEST_BASE="/home/cvsloane/Nextcloud/Documents/Single Grain GM Application - ops-coo-009"
DEST="$DEST_BASE/packet-$STAMP"
ITEM_DIR="$DEST/packet-items"
IMG_DIR="$DEST/artifact-images"
BUILD_DIR="$ROOT/tasks/exports/ops-coo-009-nextcloud-build-$STAMP"
RENDER_DIR="$BUILD_DIR/rendered"

CHROMIUM="$(command -v chromium || command -v chromium-browser || command -v google-chrome || true)"
if [[ -z "$CHROMIUM" ]]; then
  echo "Missing chromium/chromium-browser/google-chrome for PDF export." >&2
  exit 2
fi

for required in pdfinfo pdftoppm pdfunite zip; do
  if ! command -v "$required" >/dev/null 2>&1; then
    echo "Missing required command: $required" >&2
    exit 2
  fi
done

mkdir -p "$ITEM_DIR" "$IMG_DIR" "$RENDER_DIR"

cp "$SRC_DIR/written-answer.pdf" "$DEST/00_OFFICIAL_challenge_answer_2_pages.pdf"
cp "$SRC_DIR/written-answer.md" "$DEST/00_OFFICIAL_challenge_answer_2_pages.md"
cp "$SRC_DIR"/*.md "$ITEM_DIR/"

mapfile -t ARTIFACTS < <(find "$SRC_DIR" -maxdepth 1 -type f -name '*.md' ! -name 'written-answer.md' | sort)

python3 - "$BUILD_DIR/appendix-cover.html" <<'PY'
from pathlib import Path
import sys

out = Path(sys.argv[1])
out.write_text("""<!doctype html>
<html>
<head>
<meta charset="utf-8">
<style>
@page { size: letter; margin: 0.7in; }
body { font-family: Arial, Helvetica, sans-serif; color: #111; line-height: 1.35; }
h1 { font-size: 22px; margin: 0 0 16px; }
p { font-size: 12px; margin: 0 0 10px; max-width: 6.8in; }
strong { font-weight: 700; }
</style>
</head>
<body>
<h1>Appendix / Supporting Artifacts</h1>
<p><strong>Not part of the written-answer page count.</strong></p>
<p>The official written answer is the first 2 pages of this packet.</p>
<p>The following pages are image-rendered supporting artifacts: operating artifact, evidence log, source labels, AI disclosure, candidate profile, proof summaries, application support, and internal QA.</p>
<p>The challenge brief says diagrams and decision trees do not count toward the limit. The public scoring guide says artifact links, code, sheets, and short demos do not count toward the written page limit unless the brief says otherwise.</p>
<p>If the application portal counts every PDF page mechanically, submit the 2-page official PDF and attach or link supporting artifacts separately.</p>
</body>
</html>
""")
PY

"$CHROMIUM" \
  --headless \
  --disable-gpu \
  --no-sandbox \
  --no-pdf-header-footer \
  --print-to-pdf="$BUILD_DIR/appendix-cover.pdf" \
  "file://$BUILD_DIR/appendix-cover.html" >/dev/null

for artifact in "${ARTIFACTS[@]}"; do
  base="$(basename "$artifact" .md)"
  safe_base="$(printf '%s' "$base" | tr -cs '[:alnum:]_.-' '-')"
  html_out="$RENDER_DIR/$safe_base.html"
  pdf_out="$RENDER_DIR/$safe_base.pdf"
  png_prefix="$IMG_DIR/$safe_base"

  python3 - "$artifact" "$html_out" "$base" <<'PY'
from pathlib import Path
import html
import sys

src = Path(sys.argv[1])
out = Path(sys.argv[2])
title = sys.argv[3]
body = html.escape(src.read_text())
out.write_text(f"""<!doctype html>
<html>
<head>
<meta charset="utf-8">
<style>
@page {{ size: letter; margin: 0.42in; }}
body {{ font-family: Arial, Helvetica, sans-serif; color: #111; }}
h1 {{ font-size: 16px; margin: 0 0 10px; padding-bottom: 5px; border-bottom: 1px solid #bbb; }}
pre {{ font-family: Arial, Helvetica, sans-serif; font-size: 9px; line-height: 1.22; white-space: pre-wrap; overflow-wrap: anywhere; margin: 0; }}
</style>
</head>
<body>
<h1>{html.escape(title)}</h1>
<pre>{body}</pre>
</body>
</html>
""")
PY

  "$CHROMIUM" \
    --headless \
    --disable-gpu \
    --no-sandbox \
    --no-pdf-header-footer \
    --print-to-pdf="$pdf_out" \
    "file://$html_out" >/dev/null

  pdftoppm -png -r 135 "$pdf_out" "$png_prefix" >/dev/null
done

python3 - "$IMG_DIR" "$BUILD_DIR/artifact-image-index.html" <<'PY'
from pathlib import Path
import re
import sys

img_dir = Path(sys.argv[1])
out = Path(sys.argv[2])

def natural_key(path: Path):
    return [int(part) if part.isdigit() else part.lower() for part in re.split(r"(\d+)", path.name)]

images = sorted(img_dir.glob("*.png"), key=natural_key)
pages = []
for image in images:
    label = image.name
    pages.append(f"""<section class="page">
  <div class="label">{label}</div>
  <img src="{image.resolve().as_uri()}" alt="{label}">
</section>""")

out.write_text("""<!doctype html>
<html>
<head>
<meta charset="utf-8">
<style>
@page { size: letter; margin: 0.18in; }
* { box-sizing: border-box; }
body { margin: 0; font-family: Arial, Helvetica, sans-serif; color: #111; }
.page { break-after: page; height: 10.64in; display: flex; flex-direction: column; align-items: center; justify-content: center; }
.label { width: 100%; font-size: 8px; color: #555; margin-bottom: 4px; overflow-wrap: anywhere; }
img { max-width: 100%; max-height: 10.35in; object-fit: contain; border: 1px solid #ddd; }
</style>
</head>
<body>
""" + "\n".join(pages) + """
</body>
</html>
""")
PY

"$CHROMIUM" \
  --headless \
  --disable-gpu \
  --no-sandbox \
  --no-pdf-header-footer \
  --print-to-pdf="$DEST/02_ARTIFACTS_image_appendix_only.pdf" \
  "file://$BUILD_DIR/artifact-image-index.html" >/dev/null

pdfunite \
  "$DEST/00_OFFICIAL_challenge_answer_2_pages.pdf" \
  "$BUILD_DIR/appendix-cover.pdf" \
  "$DEST/02_ARTIFACTS_image_appendix_only.pdf" \
  "$DEST/01_FULL_REVIEW_packet_with_image_appendix.pdf"

find "$DEST" -maxdepth 2 -type f -print0 \
  | sort -z \
  | xargs -0 sha256sum \
  > "$DEST/packet-sha256sums.txt"

DEST_PARENT="$(dirname "$DEST")"
DEST_NAME="$(basename "$DEST")"
ZIP_OUT="$DEST_PARENT/$DEST_NAME.zip"
(
  cd "$DEST_PARENT"
  zip -qr "$ZIP_OUT" "$DEST_NAME"
)

echo "Packet folder: $DEST"
echo "Zip bundle: $ZIP_OUT"
echo
echo "Official PDF:"
pdfinfo "$DEST/00_OFFICIAL_challenge_answer_2_pages.pdf" | rg "^(Pages|Page size|File size):"
echo
echo "Full review packet:"
pdfinfo "$DEST/01_FULL_REVIEW_packet_with_image_appendix.pdf" | rg "^(Pages|Page size|File size):"
echo
echo "Artifact image appendix:"
pdfinfo "$DEST/02_ARTIFACTS_image_appendix_only.pdf" | rg "^(Pages|Page size|File size):"
