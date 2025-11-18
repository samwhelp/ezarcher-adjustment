#!/usr/bin/env bash

set -e


################################################################################
### Head: yakuake
##

yakuake_config_install () {

	echo
	echo "##"
	echo "## Config: yakuake"
	echo "##"
	echo


	yakuake_config_install_by_dir

	#yakuake_config_install_by_each_file


	echo

}

yakuake_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"



}

yakuake_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config"
	mkdir -p "${HOME}/.config"


	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/yakuakerc ${HOME}/.config/yakuakerc"
	install -Dm644 "./asset/overlay/etc/skel/.config/yakuakerc" "${HOME}/.config/yakuakerc"


}

##
### Tail: yakuake
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	yakuake_config_install

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
