#!/usr/bin/env bash

set -e


################################################################################
### Head: dconf
##

dconf_config_install () {

	echo
	echo "##"
	echo "## Config: dconf"
	echo "##"
	echo

	dconf_config_install_prepare_db_dir
	dconf_config_install_profile
	dconf_config_install_update_db

	echo

}

dconf_config_install_prepare_db_dir () {

	echo
	echo "sudo mkdir -p /etc/dconf/db/local.d"
	sudo mkdir -p "/etc/dconf/db/local.d"

	echo
	echo "sudo mkdir -p /etc/dconf/db/site.d"
	sudo mkdir -p "/etc/dconf/db/site.d"

	echo
	echo "sudo mkdir -p /etc/dconf/db/distro.d"
	sudo mkdir -p "/etc/dconf/db/distro.d"

}

dconf_config_install_profile () {

	echo
	echo "sudo mkdir -p /etc/dconf/profile"
	sudo mkdir -p "/etc/dconf/profile"

	echo
	echo "sudo install -Dm644 ./config/dconf/profile/user /etc/dconf/profile/user"
	sudo install -Dm644 "./config/dconf/profile/user" "/etc/dconf/profile/user"

}

dconf_config_install_update_db () {

	echo
	echo "sudo dconf update"
	sudo dconf update

	echo
	echo "file /etc/dconf/db/local"
	file "/etc/dconf/db/local"

	echo
	echo "file /etc/dconf/db/site"
	file "/etc/dconf/db/site"

	echo
	echo "file /etc/dconf/db/distro"
	file "/etc/dconf/db/distro"

}

##
### Tail: dconf
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	dconf_config_install

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
