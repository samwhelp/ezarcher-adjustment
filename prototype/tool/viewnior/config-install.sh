#!/usr/bin/env bash

set -e


################################################################################
### Head: viewnior
##

viewnior_config_install () {

	echo
	echo "##"
	echo "## Config: viewnior"
	echo "##"
	echo


	viewnior_config_install_by_dir

	#viewnior_config_install_by_each_file


	echo

}

viewnior_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}/.config/viewnior"
	mkdir -p "${HOME}/.config/viewnior"


	echo
	echo "cp -rf ./config/viewnior/. ${HOME}/.config/viewnior"
	cp -rf "./config/viewnior/." "${HOME}/.config/viewnior"


}

viewnior_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/viewnior"
	mkdir -p "${HOME}/.config/viewnior"

	echo
	echo "install -Dm644 ./config/viewnior/viewnior.conf ${HOME}/.config/viewnior/viewnior.conf"
	install -Dm644 "./config/viewnior/viewnior.conf" "${HOME}/.config/viewnior/viewnior.conf"



}

##
### Tail: viewnior
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	viewnior_config_install

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
