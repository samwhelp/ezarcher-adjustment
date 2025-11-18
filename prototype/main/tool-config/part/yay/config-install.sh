#!/usr/bin/env bash

set -e


################################################################################
### Head: yay
##

yay_config_install () {

	echo
	echo "##"
	echo "## Config: yay"
	echo "##"
	echo


	echo
	echo "## ## Do Nothing!"
	echo

	#yay_config_install_by_dir

	#yay_config_install_by_each_file


	echo

}

yay_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

yay_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/yay"
	mkdir -p "${HOME}/.config/yay"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/yay/yay.conf ${HOME}/.config/yay/yay.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/yay/yay.conf" "${HOME}/.config/yay/yay.conf"


}

##
### Tail: yay
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	yay_config_install

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
