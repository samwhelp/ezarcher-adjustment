#!/usr/bin/env bash

set -e


################################################################################
### Head: openbox
##

openbox_config_install () {

	echo
	echo "##"
	echo "## Config: openbox"
	echo "##"
	echo


	openbox_config_install_by_dir

	#openbox_config_install_by_each_file


	echo

}

openbox_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}/.config/openbox"
	mkdir -p "${HOME}/.config/openbox"


	echo
	echo "cp -rf ./config/openbox/. ${HOME}/.config/openbox"
	cp -rf "./config/openbox/." "${HOME}/.config/openbox"


}

openbox_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/openbox"
	mkdir -p "${HOME}/.config/openbox"

	echo
	echo "install -Dm644 ./config/openbox/rc.xml ${HOME}/.config/openbox/rc.xml"
	install -Dm644 "./config/openbox/rc.xml" "${HOME}/.config/openbox/rc.xml"

	echo
	echo "install -Dm644 ./config/openbox/menu.xml ${HOME}/.config/openbox/menu.xml"
	install -Dm644 "./config/openbox/menu.xml" "${HOME}/.config/openbox/menu.xml"

	echo
	echo "install -Dm644 ./config/openbox/environment ${HOME}/.config/openbox/environment"
	install -Dm644 "./config/openbox/environment" "${HOME}/.config/openbox/environment"

	echo
	echo "install -Dm755 ./config/openbox/autostart ${HOME}/.config/openbox/autostart"
	install -Dm755 "./config/openbox/autostart" "${HOME}/.config/openbox/autostart"


}

##
### Tail: openbox
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	openbox_config_install

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
