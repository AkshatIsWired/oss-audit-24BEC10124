#!/bin/bash

TARGET_PKG="git"

# --- Check Package Installation ---
if dpkg -s "$TARGET_PKG" >/dev/null 2>&1; then
  echo "$TARGET_PKG is installed"
  dpkg -s "$TARGET_PKG" | grep -E 'Version|Description|Maintainer'
else
  echo "$TARGET_PKG is not installed"
fi

# --- Package Description ---
case "$TARGET_PKG" in
  git) 
    echo "Git: A distributed version control system used worldwide" 
    ;;
  *) 
    echo "Unknown package" 
    ;;
esac