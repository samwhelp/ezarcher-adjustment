#!/usr/bin/env bash

set -e


################################################################################
### Head: xfce
##

xfce_config_remove () {

	echo
	echo "##"
	echo "## Config: xfce"
	echo "##"
	echo

	xfce_dock_plank_config_remove


	echo

}

##
### Tail: xfce
################################################################################


################################################################################
### Head: xfce / dock / plank
##

xfce_dock_plank_config_remove () {

	xfce_dock_plank_config_remove_autostart

}


xfce_dock_plank_config_remove_autostart () {

	local autostart_dir_path="${HOME}/.config/autostart"
	local target_file_name="plank-on-xfce.desktop"
	local target_file_path="${autostart_dir_path}/${target_file_name}"


	echo
	echo "rm -f ${target_file_path}"
	rm -f "${target_file_path}"


}

##
### Tail: xfce / dock / plank
################################################################################


################################################################################
### Head: config_remove
##

main_config_remove () {

	xfce_config_remove

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
