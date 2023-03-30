#!/usr/bin/env bash


selected=$(echo -e "aaa\nbbb\nccc" | rofi -dmenu)

echo "Selected: ${selected}"
