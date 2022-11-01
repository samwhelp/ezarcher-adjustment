#!/usr/bin/env bash


dconf load /org/cinnamon/desktop/keybindings/ < profile.d/cinnamon-keybind-custom.ini




#dconf dump /org/cinnamon/desktop/keybindings/

dconf dump / | grep '\[org/cinnamon/desktop/keybindings\]' -A 119
