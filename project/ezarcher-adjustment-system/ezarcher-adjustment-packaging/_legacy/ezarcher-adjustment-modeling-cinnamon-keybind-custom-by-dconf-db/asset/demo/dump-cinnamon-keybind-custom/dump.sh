#!/usr/bin/env bash


#dconf dump /org/cinnamon/desktop/keybindings/

dconf dump / | grep '\[org/cinnamon/desktop/keybindings\]' -A 119
