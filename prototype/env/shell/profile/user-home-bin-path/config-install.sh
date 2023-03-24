#!/usr/bin/env bash

set -e


################################################################################
### Head: profile
##

profile_config_install () {

	echo
	echo "##"
	echo "## Config: profile"
	echo "##"
	echo


	#echo
	#echo "mkdir -p /etc/profile.d"
	#mkdir -p "/etc/profile.d"


	#echo
	#echo "cp -rf ./config/profile.d/. /etc/profile.d"
	#cp -rf "./config/profile.d/." "/etc/profile.d"


	echo
	echo "sudo install -Dm644 ./config/profile.d/user-home-bin-path.sh /etc/profile.d/user-home-bin-path.sh"
	sudo install -Dm644 "./config/profile.d/user-home-bin-path.sh" "/etc/profile.d/user-home-bin-path.sh"




	echo

}

profile_config_install_create_bin_dir () {

	echo
	echo "mkdir -p ${HOME}/.local/bin"
	mkdir -p "${HOME}/.local/bin"

	echo
	echo "mkdir -p ${HOME}/bin"
	mkdir -p "${HOME}/bin"

	echo
}

##
### Tail: profile
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	profile_config_install

	profile_config_install_create_bin_dir

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
