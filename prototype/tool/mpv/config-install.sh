#!/usr/bin/env bash

set -e


################################################################################
### Head: mpv
##

mpv_config_install () {

	echo
	echo "##"
	echo "## Config: mpv"
	echo "##"
	echo


	mpv_config_install_by_dir

	mpv_config_install_by_each_file


	echo

}

mpv_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}/.config/mpv"
	mkdir -p "${HOME}/.config/mpv"


	echo
	echo "cp -rf ./config/mpv/. ${HOME}/.config/mpv"
	cp -rf "./config/mpv/." "${HOME}/.config/mpv"


}

mpv_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/mpv"
	mkdir -p "${HOME}/.config/mpv"

	echo
	echo "install -Dm644 ./config/mpv/mpv.conf ${HOME}/.config/mpv/mpv.conf"
	install -Dm644 "./config/mpv/mpv.conf" "${HOME}/.config/mpv/mpv.conf"



}

##
### Tail: mpv
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	mpv_config_install

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
