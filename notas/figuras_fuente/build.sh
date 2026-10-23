#!/bin/bash
# uso: ./build.sh 1 2 3   (o sin args = todas)
cd "$(dirname "$0")"
ids="$@"; [ -z "$ids" ] && ids=$(ls src/fig*.tex | sed 's/.*fig\([0-9]*\).tex/\1/' | sort -n)
for i in $ids; do
  pdflatex -interaction=nonstopmode -halt-on-error -output-directory=/tmp/figout src/fig$i.tex >/tmp/figout/log$i.txt 2>&1 || { echo "ERROR fig$i"; grep -m3 -A3 '^!' /tmp/figout/log$i.txt; continue; }
  cp /tmp/figout/fig$i.pdf ../Fig$i.pdf
done
