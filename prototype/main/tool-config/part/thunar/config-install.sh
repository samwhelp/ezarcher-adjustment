#!/usr/bin/env bash

set -e


################################################################################
### Head: thunar
##

thunar_config_install () {

	echo
	echo "##"
	echo "## Config: thunar"
	echo "##"
	echo


	thunar_config_install_by_dir

	#thunar_config_install_by_each_file


	echo

}

thunar_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

thunar_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/thunar"
	mkdir -p "${HOME}/.config/thunar"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/thunar/settings.json ${HOME}/.config/thunar/settings.json"
	install -Dm644 "./asset/overlay/etc/skel/.config/thunar/settings.json" "${HOME}/.config/thunar/settings.json"


}

##
### Tail: thunar
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	thunar_config_install

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
