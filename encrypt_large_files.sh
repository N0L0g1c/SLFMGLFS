#!/bin/bash

read -s -p "Enter encryption password: " PASS
echo

find . -type f -size +100M -print0 | while IFS= read -r -d '' file; do
    gpg_file="${file}.gpg"
    if [ -f "$gpg_file" ]; then
        echo "Skipping $file, ${gpg_file} already exists"
        continue
    fi
    echo "Encrypting $file to $gpg_file"
    echo "$PASS" | gpg --symmetric --cipher-algo AES256 --passphrase-fd 0 --output "$gpg_file" -- "$file"
    if [ $? -eq 0 ]; then
        rm "$file"
    else
        echo "Failed to encrypt $file"
    fi
done
