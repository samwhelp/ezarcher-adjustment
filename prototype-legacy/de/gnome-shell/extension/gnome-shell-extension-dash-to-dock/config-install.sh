#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_config_install () {

	echo
	echo "##"
	echo "## Config: gnome-shell"
	echo "##"
	echo

	gnome_shell_extension_dash_to_dock_config_main

	echo
}

##
### Tail: gnome-shell
################################################################################


################################################################################
### Head: gnome-shell / config
##

gnome_shell_extension_dash_to_dock_config_main () {

	gnome_shell_extension_dash_to_dock_config_main_by_import_dconf_db

}

gnome_shell_extension_dash_to_dock_config_main_by_import_dconf_db () {


	##
	## dconf dump /org/gnome/shell/extensions/dash-to-dock/
	##


	echo "## gnome_shell_extension_dash_to_dock_config_main_by_import_dconf_db"



	echo
	echo "reset -f /org/gnome/shell/extensions/dash-to-dock/"
	dconf reset -f /org/gnome/shell/extensions/dash-to-dock/

	echo
	echo "dconf load /org/gnome/shell/extensions/dash-to-dock/ < ./config/gnome-shell-extension/schema/dconf-db/50_gnome-shell-extension-dash-to-dock.conf"
	dconf load /org/gnome/shell/extensions/dash-to-dock/ < ./config/gnome-shell-extension/schema/dconf-db/50_gnome-shell-extension-dash-to-dock.conf


	echo
}


##
### Tail: gnome-shell / config
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	gnome_shell_config_install

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
