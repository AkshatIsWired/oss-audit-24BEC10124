#!/bin/bash

TARGET_DIRECTORIES=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
GIT_CONF_DIR="/etc/git"

echo "===== Directory Audit Report ====="
echo "----------------------------------"

# --- Iterate through target directories ---
for folder in "${TARGET_DIRECTORIES[@]}"; do
  if [[ -d "$folder" ]]; then
    dir_size=$(du -sh "$folder" 2>/dev/null | awk '{print $1}')
    dir_perms=$(ls -ld "$folder" | awk '{print $1, $3, $4}')
    echo "$folder => Permissions: $dir_perms | Size: $dir_size"
  else
    echo "$folder does not exist"
  fi
done

# --- Verify Git configuration directory ---
if [[ -d "$GIT_CONF_DIR" ]]; then
  echo "Git config directory exists"
  ls -ld "$GIT_CONF_DIR"
else
  echo "Git config directory not found"
fi