#!/usr/bin/env bash

set -e


################################################################################
### Head: lightdm
##

lightdm_config_install () {

	echo
	echo "##"
	echo "## Config: lightdm"
	echo "##"
	echo


	lightdm_config_install_by_dir

	#lightdm_config_install_by_each_file


	echo

}

lightdm_config_install_by_dir () {


	#echo
	#echo "sudo mkdir -p /etc/lightdm"
	#sudo mkdir -p "/etc/lightdm"


	echo
	echo "sudo cp -rfT ./asset/overlay/etc/lightdm /etc/lightdm"
	sudo cp -rfT "./asset/overlay/etc/lightdm" "/etc/lightdm"


}

lightdm_config_install_by_each_file () {


	echo
	echo "sudo mkdir -p /etc/lightdm"
	sudo mkdir -p "/etc/lightdm"

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf"
	sudo install -Dm644 "./asset/overlay/etc/lightdm/lightdm-gtk-greeter.conf" "/etc/lightdm/lightdm-gtk-greeter.conf"


}

##
### Tail: lightdm
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	lightdm_config_install

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
