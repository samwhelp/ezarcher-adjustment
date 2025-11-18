#!/usr/bin/env bash

set -e


################################################################################
### Head: tool
##

tool_config_install () {

	echo
	echo "##"
	echo "## Config: tool"
	echo "##"
	echo


	tool_config_install_by_dir


	echo

}

tool_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

##
### Tail: tool
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	tool_config_install

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
