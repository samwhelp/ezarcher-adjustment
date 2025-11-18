#!/usr/bin/env bash

set -e


################################################################################
### Head: micro
##

micro_config_install () {

	echo
	echo "##"
	echo "## Config: micro"
	echo "##"
	echo


	micro_config_install_by_dir

	#micro_config_install_by_each_file


	echo

}

micro_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

micro_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/micro"
	mkdir -p "${HOME}/.config/micro"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/micro/settings.json ${HOME}/.config/micro/settings.json"
	install -Dm644 "./asset/overlay/etc/skel/.config/micro/settings.json" "${HOME}/.config/micro/settings.json"


}

##
### Tail: micro
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	micro_config_install

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
