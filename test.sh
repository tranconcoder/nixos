#!/usr/bin/env bash
set -e

echo "Syncing repo to /etc/nixos..."
rsync -a --exclude='.git' --exclude='*.bak' --exclude='rebuild.sh' . /etc/nixos/

echo "Running nixos-rebuild dry-run..."
sudo nixos-rebuild dry-run

echo "Done! Config is valid."