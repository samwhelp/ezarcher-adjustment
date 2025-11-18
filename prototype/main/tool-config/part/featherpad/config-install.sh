#!/usr/bin/env bash

set -e


################################################################################
### Head: featherpad
##

featherpad_config_install () {

	echo
	echo "##"
	echo "## Config: featherpad"
	echo "##"
	echo


	featherpad_config_install_by_dir

	#featherpad_config_install_by_each_file


	echo

}

featherpad_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

featherpad_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/featherpad"
	mkdir -p "${HOME}/.config/featherpad"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/featherpad/featherpad.conf ${HOME}/.config/featherpad/featherpad.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/featherpad/featherpad.conf" "${HOME}/.config/featherpad/featherpad.conf"


}

##
### Tail: featherpad
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	featherpad_config_install

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
