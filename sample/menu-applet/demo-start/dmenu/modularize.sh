#!/usr/bin/env bash


menu_list () {
	echo -e "aaa\nbbb\nccc"
}

menu_factory () {
	dmenu -b -l 10
}

menu_start () {
	 menu_list | menu_factory
}

selected=$(menu_start)

echo "Selected: ${selected}"
