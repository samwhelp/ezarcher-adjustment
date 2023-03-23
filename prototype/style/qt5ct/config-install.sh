#!/usr/bin/env bash

set -e


################################################################################
### Head: qt5ct
##
qt5ct_config_install () {

	echo "## Config: qt5ct"
	echo

	echo "mkdir -p $HOME/.config/qt5ct"
	mkdir -p "$HOME/.config/qt5ct"


	echo "install -Dm644 ./config/qt5ct/qt5ct.conf $HOME/.config/qt5ct/qt5ct.conf"
	install -Dm644 "./config/qt5ct/qt5ct.conf" "$HOME/.config/qt5ct/qt5ct.conf"

	echo

}
##
### Tail: qt5ct
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	qt5ct_config_install

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
