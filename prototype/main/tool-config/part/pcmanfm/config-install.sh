#!/usr/bin/env bash

set -e


################################################################################
### Head: pcmanfm
##

pcmanfm_config_install () {

	echo
	echo "##"
	echo "## Config: pcmanfm"
	echo "##"
	echo


	pcmanfm_config_install_by_dir

	#pcmanfm_config_install_by_each_file


	echo

}

pcmanfm_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

pcmanfm_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/pcmanfm"
	mkdir -p "${HOME}/.config/pcmanfm"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/pcmanfm/pcmanfm.conf ${HOME}/.config/pcmanfm/pcmanfm.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/pcmanfm/pcmanfm.conf" "${HOME}/.config/pcmanfm/pcmanfm.conf"


}

##
### Tail: pcmanfm
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	pcmanfm_config_install

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
