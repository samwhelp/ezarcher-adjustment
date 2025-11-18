#!/usr/bin/env bash

set -e


################################################################################
### Head: hyprland_config_install
##
hyprland_config_install () {

	echo
	echo "##"
	echo "## Config Start: hyprland_config_install"
	echo "##"
	echo

	hyprland_config_install_main
	#hyprland_config_install_main_each


	echo
}

##
### Tail: hyprland_config_install
################################################################################


################################################################################
### Head: hyprland_config_install_main
##
hyprland_config_install_main () {

	echo
	echo "##"
	echo "## Install: hyprland_config_install_main"
	echo "##"
	echo


	local source_dir_path="./config/hyprland"
	local target_dir_path="${HOME}/.config/hypr"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	cp -rfv "${source_dir_path}/." "${target_dir_path}/"





	echo

}

hyprland_config_install_main_each () {

	echo
	echo "##"
	echo "## Install: hyprland_config_install_main_each"
	echo "##"
	echo


	local source_dir_path="./config/hyprland"
	local target_dir_path="${HOME}/.config/hypr"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	#echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	#cp -rfv "${source_dir_path}/." "${target_dir_path}/"


	echo "install -Dm644 ${source_dir_path}/hyprland.conf ${target_dir_path}/hyprland.conf"
	install -Dm644 "${source_dir_path}/hyprland.conf" "${target_dir_path}/hyprland.conf"


	echo

}
##
### Tail: hyprland_config_install_main
################################################################################


################################################################################
### Head: main
##
main_confing_install () {

	hyprland_config_install

	return 0

}

main_confing_install
##
### Tail: main
################################################################################
