#!/usr/bin/env bash

set -e


################################################################################
### Head: nano
##

nano_config_install () {

	echo
	echo "##"
	echo "## Config: nano"
	echo "##"
	echo


	nano_config_install_by_dir

	#nano_config_install_by_each_file


	echo

}

nano_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

nano_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/nano"
	mkdir -p "${HOME}/.config/nano"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/nano/nanorc ${HOME}/.config/nano/nanorc"
	install -Dm644 "./asset/overlay/etc/skel/.config/nano/nanorc" "${HOME}/.config/nano/nanorc"


}

##
### Tail: nano
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	nano_config_install

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
