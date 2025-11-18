#!/usr/bin/env bash

set -e


################################################################################
### Head: rofi
##

rofi_config_install () {

	echo
	echo "##"
	echo "## Config: rofi"
	echo "##"
	echo


	rofi_config_install_by_dir

	#rofi_config_install_by_each_file


	echo

}

rofi_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

rofi_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/rofi"
	mkdir -p "${HOME}/.config/rofi"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/rofi/config.rasi ${HOME}/.config/rofi/config.rasi"
	install -Dm644 "./asset/overlay/etc/skel/.config/rofi/config.rasi" "${HOME}/.config/rofi/config.rasi"


}

##
### Tail: rofi
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	rofi_config_install

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
