#!/usr/bin/env bash

set -e


################################################################################
### Head: lxterminal
##

lxterminal_config_install () {

	echo
	echo "##"
	echo "## Config: lxterminal"
	echo "##"
	echo


	lxterminal_config_install_by_dir

	#lxterminal_config_install_by_each_file


	echo

}

lxterminal_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}/.config/lxterminal"
	mkdir -p "${HOME}/.config/lxterminal"


	echo
	echo "cp -rf ./config/lxterminal/. ${HOME}/.config/lxterminal"
	cp -rf "./config/lxterminal/." "${HOME}/.config/lxterminal"


}

lxterminal_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/lxterminal"
	mkdir -p "${HOME}/.config/lxterminal"

	echo
	echo "install -Dm644 ./config/lxterminal/lxterminal.conf ${HOME}/.config/lxterminal/lxterminal.conf"
	install -Dm644 "./config/lxterminal/lxterminal.conf" "${HOME}/.config/lxterminal/lxterminal.conf"



}

##
### Tail: lxterminal
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	lxterminal_config_install

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
