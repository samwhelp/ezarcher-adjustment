#!/usr/bin/env bash

set -e


################################################################################
### Head: background
##

background_config_install () {

	echo
	echo "##"
	echo "## Config: background"
	echo "##"
	echo


	background_config_install_by_dir

	#background_config_install_by_each_file


	echo

}

background_config_install_by_dir () {


	echo
	echo "sudo mkdir -p /usr/share/backgrounds"
	sudo mkdir -p "/usr/share/backgrounds"


	echo
	echo "sudo cp -rfT ./asset/overlay/usr/share/backgrounds /usr/share/backgrounds"
	sudo cp -rfT "./asset/overlay/usr/share/backgrounds" "/usr/share/backgrounds"


	return 0
}

background_config_install_by_each_file () {


	echo
	echo "sudo mkdir -p /usr/share/backgrounds"
	sudo mkdir -p "/usr/share/backgrounds"


	echo
	echo "sudo install -Dm644 ./asset/overlay/usr/share/backgrounds/default.jpg /usr/share/backgrounds/default.jpg"
	sudo install -Dm644 "./asset/overlay/usr/share/backgrounds/default.jpg" "/usr/share/backgrounds/default.jpg"


}

##
### Tail: background
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	background_config_install

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
