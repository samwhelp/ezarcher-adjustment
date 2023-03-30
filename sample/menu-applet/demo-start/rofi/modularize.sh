#!/usr/bin/env bash


menu_list () {
	echo -e "aaa\nbbb\nccc"
}

menu_factory () {
	rofi -dmenu
}

menu_start () {
	 menu_list | menu_factory
}

selected=$(menu_start)

echo "Selected: ${selected}"
