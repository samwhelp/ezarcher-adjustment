#!/usr/bin/env bash


dconf reset -f /org/gnome/shell/extensions/dash-to-dock/

dconf load /org/gnome/shell/extensions/dash-to-dock/ < 50_gnome-shell-extension-dash-to-dock.conf

