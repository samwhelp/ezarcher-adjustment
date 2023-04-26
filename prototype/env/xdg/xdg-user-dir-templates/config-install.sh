#!/usr/bin/env bash

set -e


################################################################################
### Head: xdg
##

xdg_config_install () {

	echo
	echo "##"
	echo "## Config: xdg"
	echo "##"
	echo


	xdg_config_install_by_dir

	#xdg_config_install_by_each_file


	echo

}

xdg_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}/Templates"
	mkdir -p "${HOME}/Templates"


	echo
	echo "cp -rf ./config/xdg-user-dir-templates/Templates/. ${HOME}/Templates"
	cp -rf "./config/xdg-user-dir-templates/Templates/." "${HOME}/Templates"


}

xdg_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/xdg"
	mkdir -p "${HOME}/.config/xdg"

	echo
	echo "install -Dm644 ./config/xdg/rc.xml ${HOME}/.config/xdg/rc.xml"
	install -Dm644 "./config/xdg/rc.xml" "${HOME}/.config/xdg/rc.xml"

	echo
	echo "install -Dm644 ./config/xdg/menu.xml ${HOME}/.config/xdg/menu.xml"
	install -Dm644 "./config/xdg/menu.xml" "${HOME}/.config/xdg/menu.xml"

	echo
	echo "install -Dm644 ./config/xdg/environment ${HOME}/.config/xdg/environment"
	install -Dm644 "./config/xdg/environment" "${HOME}/.config/xdg/environment"

	echo
	echo "install -Dm755 ./config/xdg/autostart ${HOME}/.config/xdg/autostart"
	install -Dm755 "./config/xdg/autostart" "${HOME}/.config/xdg/autostart"


}

##
### Tail: xdg
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	xdg_config_install

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
