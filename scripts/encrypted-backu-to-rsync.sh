#!/bin/bash

    # Configuration
    SOURCE_DIR="/mnt/backup"
    REMOTE_USER="de2368"
    REMOTE_HOST="de2368.rsync.net"
    REMOTE_PATH="/backups"
    GPG_RECIPIENT="aswinford@jadam.space"

    # Function to encrypt and transfer a single file
    encrypt_and_sync_file() {
        local file="$1"
        local relative_path="${file#$SOURCE_DIR/}"
        local encrypted_file="$(basename "$file").gpg"

        # Encrypt the file
        gpg --batch --yes --encrypt --recipient "$GPG_RECIPIENT" --output -
  "$file" | \

        # Use rsync to send it to the remote without saving it locally
        rsync --progress --inplace --rsync-path="mkdir -p $(dirname
  "$REMOTE_PATH/$relative_path") && rsync" \
              -avz --rsync-path="mkdir -p $(dirname "$REMOTE_PATH/$relative_path")
  && rsync" - "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH/$relative_path.gpg"

        echo "Uploaded and encrypted: $file"
    }

    echo "Starting incremental encryption and upload from $SOURCE_DIR..."

    # Find and process each file individually
    find "$SOURCE_DIR" -type f | while read -r file; do
        encrypt_and_sync_file "$file"
    done

    echo "Backup completed successfully."

