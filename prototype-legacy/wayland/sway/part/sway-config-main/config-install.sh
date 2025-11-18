#!/usr/bin/env bash

set -e


################################################################################
### Head: sway_config_install
##
sway_config_install () {

	echo
	echo "##"
	echo "## Config Start: sway_config_install"
	echo "##"
	echo

	sway_config_install_main
	#sway_config_install_main_each


	echo
}

##
### Tail: sway_config_install
################################################################################


################################################################################
### Head: sway_config_install_main
##
sway_config_install_main () {

	echo
	echo "##"
	echo "## Install: sway_config_install_main"
	echo "##"
	echo


	local source_dir_path="./config/sway"
	local target_dir_path="${HOME}/.config/sway"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	cp -rfv "${source_dir_path}/." "${target_dir_path}/"





	echo

}

sway_config_install_main_each () {

	echo
	echo "##"
	echo "## Install: sway_config_install_main_each"
	echo "##"
	echo


	local source_dir_path="./config/sway"
	local target_dir_path="${HOME}/.config/sway"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	#echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	#cp -rfv "${source_dir_path}/." "${target_dir_path}/"


	echo "install -Dm644 ${source_dir_path}/config ${target_dir_path}/config"
	install -Dm644 "${source_dir_path}/config" "${target_dir_path}/config"


	echo "install -Dm755 ${source_dir_path}/autostart ${target_dir_path}/autostart"
	install -Dm755 "${source_dir_path}/autostart" "${target_dir_path}/autostart"



	echo

}
##
### Tail: sway_config_install_main
################################################################################


################################################################################
### Head: main
##
main_confing_install () {

	sway_config_install

	return 0

}

main_confing_install
##
### Tail: main
################################################################################
