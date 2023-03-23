#!/usr/bin/env bash

set -e


################################################################################
### Head: kvantum
##

kvantum_config_install () {

	echo
	echo "##"
	echo "## Config: kvantum"
	echo "##"
	echo


	echo
	echo "install -Dm644 ./config/Kvantum/kvantum.kvconfig ${HOME}/.config/Kvantum/kvantum.kvconfig"
	install -Dm644 "./config/Kvantum/kvantum.kvconfig" "${HOME}/.config/Kvantum/kvantum.kvconfig"

	echo

}

##
### Tail: kvantum
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	kvantum_config_install

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
