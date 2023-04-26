#!/usr/bin/env bash

set -e


################################################################################
### Head: dconf
##

dconf_config_remove () {

	echo
	echo "##"
	echo "## Config: dconf"
	echo "##"
	echo

	dconf_config_remove_profile
	dconf_config_remove_update_db

	echo

}

dconf_config_remove_profile () {

	echo
	echo "sudo rm -f /etc/dconf/profile/user"
	sudo rm -f "/etc/dconf/profile/user"

}

dconf_config_remove_update_db () {

	echo
	echo "sudo dconf update"
	sudo dconf update

}

##
### Tail: dconf
################################################################################


################################################################################
### Head: config_remove
##

main_config_remove () {

	dconf_config_remove

}

##
### Tail: config_remove
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_remove

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
