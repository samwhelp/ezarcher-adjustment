#!/usr/bin/env bash

set -e


################################################################################
### Head: sakura
##

sakura_config_install () {

	echo
	echo "##"
	echo "## Config: sakura"
	echo "##"
	echo


	sakura_config_install_by_dir

	#sakura_config_install_by_each_file


	echo

}

sakura_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

sakura_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/sakura"
	mkdir -p "${HOME}/.config/sakura"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/sakura/sakura.conf ${HOME}/.config/sakura/sakura.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/sakura/sakura.conf" "${HOME}/.config/sakura/sakura.conf"


}

##
### Tail: sakura
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	sakura_config_install

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
