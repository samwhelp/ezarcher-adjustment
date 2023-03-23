#!/usr/bin/env bash

set -e


################################################################################
### Head: xfce
##

xfce_config_install () {

	echo
	echo "##"
	echo "## Config: xfce"
	echo "##"
	echo


	#echo
	#echo "mkdir -p ${HOME}/.config/xfce4"
	#mkdir -p "${HOME}/.config/xfce4"


	#echo
	#echo "cp -rf ./config/xfce4/. ${HOME}/.config/xfce4"
	#cp -rf "./config/xfce4/." "${HOME}/.config/xfce4"


	echo
	echo "install -Dm644 ./config/xfce4/helpers.rc ${HOME}/.config/xfce4/helpers.rc"
	install -Dm644 "./config/xfce4/helpers.rc" "${HOME}/.config/xfce4/helpers.rc"


	echo

}

##
### Tail: xfce
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	xfce_config_install

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
