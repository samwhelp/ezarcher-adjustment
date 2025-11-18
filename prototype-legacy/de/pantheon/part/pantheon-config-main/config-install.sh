#!/usr/bin/env bash

set -e


################################################################################
### Head: pantheon
##

pantheon_config_install () {

	echo
	echo "##"
	echo "## Config: pantheon"
	echo "##"
	echo


	#echo
	#echo "mkdir -p ${HOME}/.config/pantheon"
	#mkdir -p "${HOME}/.config/pantheon"


	#echo
	#echo "cp -rf ./config/pantheon/. ${HOME}/.config/pantheon"
	#cp -rf "./config/pantheon/." "${HOME}/.config/pantheon"


	#echo
	#echo "install -Dm644 ./config/pantheon/pantheon.conf ${HOME}/.config/pantheon/pantheon.conf"
	#install -Dm644 "./config/pantheon/pantheon.conf" "${HOME}/.config/pantheon/pantheon.conf"


	echo

}

##
### Tail: pantheon
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	pantheon_config_install

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
