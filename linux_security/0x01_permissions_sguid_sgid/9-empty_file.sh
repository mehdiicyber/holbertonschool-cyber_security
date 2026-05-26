#!/bin/bash
# Find and update empty files
TARGET_DIR="$1"
find "$TARGET_DIR" -type f -empty -exec chmod 777 {} +
