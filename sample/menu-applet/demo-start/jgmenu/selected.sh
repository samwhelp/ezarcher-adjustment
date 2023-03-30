#!/usr/bin/env bash


selected=$(echo -e "aaa,val_aaa\nbbb,val_bbb\nccc,val_ccc" | jgmenu --simple --center --no-spawn)

echo "Selected: ${selected}"
