#!/usr/bin/env bash

set -e


################################################################################
### Head: qterminal
##

qterminal_config_install () {

	echo
	echo "##"
	echo "## Config: qterminal"
	echo "##"
	echo


	qterminal_config_install_by_dir

	#qterminal_config_install_by_each_file


	echo

}

qterminal_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

qterminal_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/qterminal.org"
	mkdir -p "${HOME}/.config/qterminal.org"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/qterminal.org/qterminal.ini ${HOME}/.config/qterminal.org/qterminal.ini"
	install -Dm644 "./asset/overlay/etc/skel/.config/qterminal.org/qterminal.ini" "${HOME}/.config/qterminal.org/qterminal.ini"


}

##
### Tail: qterminal
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	qterminal_config_install

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
