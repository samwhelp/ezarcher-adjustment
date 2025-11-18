#!/usr/bin/env bash


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Prepare / Ubuntu
##

mod_ubuntu_prepare () {

	echo 'sudo apt-get install openbox tint2 feh picom xsettingsd rofi sakura pcmanfm-qt mousepad'
	sudo apt-get install openbox tint2 feh picom xsettingsd rofi sakura pcmanfm-qt mousepad

}

##
### Tail: Model / Prepare / Ubuntu
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	mod_ubuntu_prepare "$@"
}

__main__ "$@"

##
### Tail: Main
################################################################################
