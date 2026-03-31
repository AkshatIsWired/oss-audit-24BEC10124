#!/bin/bash

TARGET_LOG="$1"
SEARCH_TERM="${2:-error}"
MATCH_TALLY=0

# --- Validate input file ---
if [[ ! -f "$TARGET_LOG" ]]; then
  echo "Error: File not found"
  exit 1
fi

# --- Read log and count matches ---
while read -r current_line || [[ -n "$current_line" ]]; do
  if printf "%s\n" "$current_line" | grep -iq "$SEARCH_TERM"; then
    ((MATCH_TALLY++))
  fi
done < "$TARGET_LOG"

# --- Output Results ---
echo "Keyword '$SEARCH_TERM' found $MATCH_TALLY times in $TARGET_LOG"
echo "Last 5 matching lines:"
grep -i "$SEARCH_TERM" "$TARGET_LOG" | tail -n 5