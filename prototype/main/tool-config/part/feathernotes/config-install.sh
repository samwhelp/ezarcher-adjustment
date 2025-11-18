#!/usr/bin/env bash

set -e


################################################################################
### Head: feathernotes
##

feathernotes_config_install () {

	echo
	echo "##"
	echo "## Config: feathernotes"
	echo "##"
	echo


	feathernotes_config_install_by_dir

	#feathernotes_config_install_by_each_file


	echo

}

feathernotes_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

feathernotes_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/feathernotes"
	mkdir -p "${HOME}/.config/feathernotes"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/feathernotes/feathernotes.conf ${HOME}/.config/feathernotes/feathernotes.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/feathernotes/feathernotes.conf" "${HOME}/.config/feathernotes/feathernotes.conf"


}

##
### Tail: feathernotes
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	feathernotes_config_install

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
