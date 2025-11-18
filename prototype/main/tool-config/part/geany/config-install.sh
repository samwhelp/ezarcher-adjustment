#!/usr/bin/env bash

set -e


################################################################################
### Head: geany
##

geany_config_install () {

	echo
	echo "##"
	echo "## Config: geany"
	echo "##"
	echo


	geany_config_install_by_dir

	#geany_config_install_by_each_file


	echo

}

geany_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

geany_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/geany"
	mkdir -p "${HOME}/.config/geany"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/geany/geany.conf ${HOME}/.config/geany/geany.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/geany/geany.conf" "${HOME}/.config/geany/geany.conf"


}

##
### Tail: geany
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	geany_config_install

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
