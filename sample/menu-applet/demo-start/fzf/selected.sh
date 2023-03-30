#!/usr/bin/env bash


selected=$(echo -e "aaa\nbbb\nccc" | fzf)

echo "Selected: ${selected}"
