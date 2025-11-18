#!/usr/bin/env bash

set -e


################################################################################
### Head: font
##

font_config_install () {

	echo
	echo "##"
	echo "## Config: font"
	echo "##"
	echo


	font_config_install_by_dir

	#font_config_install_by_each_file


	echo

}

font_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

font_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/font"
	mkdir -p "${HOME}/.config/font"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/font/font.conf ${HOME}/.config/font/font.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/font/font.conf" "${HOME}/.config/font/font.conf"


}

##
### Tail: font
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	font_config_install

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
