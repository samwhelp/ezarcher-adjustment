#!/usr/bin/env bash

set -e


################################################################################
### Head: xfce
##

xfce_config_install () {

	echo
	echo "##"
	echo "## Config: xfce"
	echo "##"
	echo

	xfce_dock_plank_config_install


	echo

}

##
### Tail: xfce
################################################################################


################################################################################
### Head: xfce / dock / plank
##

xfce_dock_plank_config_install () {

	xfce_dock_plank_config_install_autostart

}


xfce_dock_plank_config_install_autostart () {

	local autostart_dir_path="${HOME}/.config/autostart"
	local target_file_name="plank-on-xfce.desktop"
	local target_file_path="${autostart_dir_path}/${target_file_name}"

	echo
	echo "mkdir -p ${autostart_dir_path}"
	mkdir -p "${autostart_dir_path}"

	echo
	echo "cp '/usr/share/applications/plank.desktop' ${target_file_path}"
	cp '/usr/share/applications/plank.desktop' "${target_file_path}"

	echo
	echo "echo 'OnlyShowIn=XFCE;' >> ${target_file_path}"
	echo 'OnlyShowIn=XFCE;' >> "${target_file_path}"

}

##
### Tail: xfce / dock / plank
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	xfce_config_install

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
