#!/usr/bin/env bash


selected=$(echo -e "aaa\nbbb\nccc" | dmenu -b -l 10)

echo "Selected: ${selected}"
