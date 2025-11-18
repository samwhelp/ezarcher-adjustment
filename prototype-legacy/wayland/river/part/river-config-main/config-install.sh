#!/usr/bin/env bash

set -e


################################################################################
### Head: river_config_install
##
river_config_install () {

	echo
	echo "##"
	echo "## Config Start: river_config_install"
	echo "##"
	echo

	river_config_install_main
	#river_config_install_main_each


	echo
}

##
### Tail: river_config_install
################################################################################


################################################################################
### Head: river_config_install_main
##
river_config_install_main () {

	echo
	echo "##"
	echo "## Install: river_config_install_main"
	echo "##"
	echo


	local source_dir_path="./config/river"
	local target_dir_path="${HOME}/.config/river"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	cp -rfv "${source_dir_path}/." "${target_dir_path}/"





	echo

}

river_config_install_main_each () {

	echo
	echo "##"
	echo "## Install: river_config_install_main_each"
	echo "##"
	echo


	local source_dir_path="./config/river"
	local target_dir_path="${HOME}/.config/river"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	#echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	#cp -rfv "${source_dir_path}/." "${target_dir_path}/"


	echo "install -Dm644 ${source_dir_path}/init ${target_dir_path}/init"
	install -Dm644 "${source_dir_path}/init" "${target_dir_path}/init"


	echo

}
##
### Tail: river_config_install_main
################################################################################


################################################################################
### Head: main
##
main_confing_install () {

	river_config_install

	return 0

}

main_confing_install
##
### Tail: main
################################################################################
