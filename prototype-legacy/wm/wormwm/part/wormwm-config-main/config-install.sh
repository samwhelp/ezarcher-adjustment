#!/usr/bin/env bash

set -e


################################################################################
### Head: wormwm_config_install
##
wormwm_config_install () {

	echo
	echo "##"
	echo "## Config Start: wormwm_config_install"
	echo "##"
	echo

	wormwm_config_install_main
	#wormwm_config_install_main_each


	echo
}

##
### Tail: wormwm_config_install
################################################################################


################################################################################
### Head: wormwm_config_install_main
##
wormwm_config_install_main () {

	echo
	echo "##"
	echo "## Install: wormwm_config_install_main"
	echo "##"
	echo


	local source_dir_path="./config/worm"
	local target_dir_path="${HOME}/.config/worm"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	cp -rfv "${source_dir_path}/." "${target_dir_path}/"





	echo

}

wormwm_config_install_main_each () {

	echo
	echo "##"
	echo "## Install: wormwm_config_install_main_each"
	echo "##"
	echo


	local source_dir_path="./config/worm"
	local target_dir_path="${HOME}/.config/worm"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	#echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	#cp -rfv "${source_dir_path}/." "${target_dir_path}/"


	echo "install -Dm644 ${source_dir_path}/rc ${target_dir_path}/rc"
	install -Dm644 "${source_dir_path}/rc" "${target_dir_path}/rc"

	echo "install -Dm644 ${source_dir_path}/sxhkdrc ${target_dir_path}/sxhkdrc"
	install -Dm644 "${source_dir_path}/sxhkdrc" "${target_dir_path}/sxhkdrc"

	echo "install -Dm644 ${source_dir_path}/jgmenu_run ${target_dir_path}/jgmenu_run"
	install -Dm644 "${source_dir_path}/jgmenu_run" "${target_dir_path}/jgmenu_run"

	echo

}
##
### Tail: wormwm_config_install_main
################################################################################


################################################################################
### Head: main
##
main_confing_install () {

	wormwm_config_install

	return 0

}

main_confing_install
##
### Tail: main
################################################################################
