#!/usr/bin/env bash

set -e


################################################################################
### Head: qt-style-follow-gtk
##
profile_config_install () {

	echo "## Config: profile"
	echo


	echo "sudo install -Dm644 ./config/qt-style-follow-gtk/qt-style-follow-gtk.sh /etc/profile.d/qt-style-follow-gtk.sh"
	sudo install -Dm644 "./config/qt-style-follow-gtk/qt-style-follow-gtk.sh" "/etc/profile.d/qt-style-follow-gtk.sh"

	echo

}
##
### Tail: qt-style-follow-gtk
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	profile_config_install

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
