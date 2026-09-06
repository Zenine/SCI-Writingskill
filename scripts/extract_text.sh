#!/usr/bin/env bash
# 抽取原书内容到 sources/(gitignored)。
# 书A(有文字层)→ sources/text/bookA-pNNN.txt 逐页
# 书B(扫描版)  → sources/pages/bookB-NNN.png 逐页 100dpi
set -euo pipefail
cd "$(dirname "$0")/.."
A="sources/专业书-英语科技写作-406+目录.pdf"
B="sources/专业书-英文学术写作实战_3251504.pdf"
[ -f "$A" ] && [ -f "$B" ] || { echo "原书 PDF 不在 sources/,退出"; exit 1; }
mkdir -p sources/text sources/pages
pages_a=$(pdfinfo "$A" | awk '/^Pages:/{print $2}')
echo "书A 共 $pages_a 页,逐页抽文字..."
for ((p=1; p<=pages_a; p++)); do
  out=$(printf "sources/text/bookA-p%03d.txt" "$p")
  [ -s "$out" ] || pdftotext -f "$p" -l "$p" -layout "$A" "$out"
done
echo "书B 渲染为 PNG(100dpi)..."
if [ "$(ls sources/pages 2>/dev/null | wc -l)" -lt 300 ]; then
  pdftoppm -r 100 -png "$B" sources/pages/bookB
fi
echo "text: $(ls sources/text | wc -l) 个;pages: $(ls sources/pages | wc -l) 个"
