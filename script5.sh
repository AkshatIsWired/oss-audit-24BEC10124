#!/bin/bash

echo "===== Open Source Manifesto Generator ====="
echo ""

# --- Gather User Input ---
read -r -p "1. Name one open-source tool you use: " OSS_TOOL
read -r -p "2. What does freedom mean to you (one word)? " OSS_FREEDOM
read -r -p "3. What will you build and share? " OSS_BUILD

CURRENT_DATE=$(date '+%d %B %Y')
OUT_FILE="manifesto_$(whoami).txt"

# --- Write Manifesto Content to File ---
cat <<EOF > "$OUT_FILE"
On $CURRENT_DATE, I declare my belief in open source.
I use $OSS_TOOL and believe in $OSS_FREEDOM.
I will contribute by building $OSS_BUILD and sharing it freely.
Knowledge should be open, accessible, and collaborative.
EOF

# --- Display Output ---
echo ""
echo "Manifesto saved to $OUT_FILE"
echo "---------"
cat "$OUT_FILE"
