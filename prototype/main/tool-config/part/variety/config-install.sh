#!/usr/bin/env bash

set -e


################################################################################
### Head: variety
##

variety_config_install () {

	echo
	echo "##"
	echo "## Config: variety"
	echo "##"
	echo


	variety_config_install_by_dir

	#variety_config_install_by_each_file


	echo

}

variety_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

variety_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/variety"
	mkdir -p "${HOME}/.config/variety"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/variety/variety.conf ${HOME}/.config/variety/variety.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/variety/variety.conf" "${HOME}/.config/variety/variety.conf"


}

##
### Tail: variety
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	variety_config_install

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
