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
	echo "mkdir -p ${HOME}/.config/pcmanfm"
	mkdir -p "${HOME}/.config/pcmanfm"


	echo
	echo "cp -rf ./config/pcmanfm/. ${HOME}/.config/pcmanfm"
	cp -rf "./config/pcmanfm/." "${HOME}/.config/pcmanfm"




	echo
	echo "mkdir -p ${HOME}/.config/libfm"
	mkdir -p "${HOME}/.config/libfm"


	echo
	echo "cp -rf ./config/libfm/. ${HOME}/.config/libfm"
	cp -rf "./config/libfm/." "${HOME}/.config/libfm"


}

pcmanfm_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/pcmanfm/default"
	mkdir -p "${HOME}/.config/pcmanfm/default"

	echo
	echo "install -Dm644 ./config/pcmanfm/default/pcmanfm.conf ${HOME}/.config/pcmanfm/default/pcmanfm.conf"
	install -Dm644 "./config/pcmanfm/default/pcmanfm.conf" "${HOME}/.config/pcmanfm/default/pcmanfm.conf"




	echo
	echo "mkdir -p ${HOME}/.config/libfm"
	mkdir -p "${HOME}/.config/libfm"


	echo
	echo "install -Dm644 ./config/libfm/libfm.conf ${HOME}/.config/libfm/libfm.conf"
	install -Dm644 "./config/libfm/libfm.conf" "${HOME}/.config/libfm/libfm.conf"


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
