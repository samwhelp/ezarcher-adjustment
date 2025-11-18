#!/usr/bin/env bash

set -e


################################################################################
### Head: profile
##

xprofile_config_install () {

	echo
	echo "##"
	echo "## Config: xprofile"
	echo "##"
	echo


	#echo
	#echo "mkdir -p ${HOME}"
	#mkdir -p "${HOME}"


	#echo
	#echo "cp -rf ./config/xprofile/. ${HOME}"
	#cp -rf "./config/xprofile/." "${HOME}"


	echo
	echo "install -Dm644 ./config/xprofile/.xprofile ${HOME}/.xprofile"
	install -Dm644 "./config/xprofile/.xprofile" "${HOME}/.xprofile"




	echo

}

##
### Tail: profile
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	xprofile_config_install

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
