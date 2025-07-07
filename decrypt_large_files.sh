#!/bin/bash

read -s -p "Enter decryption password: " PASS
echo

find . -type f -name "*.gpg" -print0 | while IFS= read -r -d '' gpg_file; do
    original_file="${gpg_file%.gpg}"
    if [ -f "$original_file" ]; then
        echo "Skipping $gpg_file, $original_file already exists"
        continue
    fi
    echo "Decrypting $gpg_file to $original_file"
    echo "$PASS" | gpg --decrypt --passphrase-fd 0 --output "$original_file" -- "$gpg_file"
    if [ $? -eq 0 ]; then
        rm "$gpg_file"
    else
        echo "Failed to decrypt $gpg_file"
    fi
done
