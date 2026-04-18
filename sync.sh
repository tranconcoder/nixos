#!/usr/bin/env bash
set -e

SRC_DIR="/home/tvconss/nixos"
DEST_DIR="/etc/nixos"

echo "Copying NixOS configuration to $DEST_DIR..."

# Copy files preserving ownership
sudo rsync -av --delete \
    --exclude='.*' \
    --exclude='*.sh' \
    --exclude='*.bak' \
    "$SRC_DIR/" "$DEST_DIR/"

echo "Done!"