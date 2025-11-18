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


	lightdm_config_install_by_each_file


	echo

}

lightdm_config_install_by_each_file () {


	echo
	echo "sudo mkdir -p /etc/lightdm/lightdm-gtk-greeter.conf.d"
	sudo mkdir -p "/etc/lightdm/lightdm-gtk-greeter.conf.d"

	echo
	echo "sudo install -Dm644 ./config/lightdm/lightdm-gtk-greeter/main/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf"
	sudo install -Dm644 "./config/lightdm/lightdm-gtk-greeter/main/lightdm-gtk-greeter.conf" "/etc/lightdm/lightdm-gtk-greeter.conf"

	echo
	echo "sudo install -Dm644 ./config/lightdm/lightdm-gtk-greeter/main/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf.d/20_basic.conf"
	sudo install -Dm644 "./config/lightdm/lightdm-gtk-greeter/main/lightdm-gtk-greeter.conf" "/etc/lightdm/lightdm-gtk-greeter.conf.d/20_basic.conf"


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
