#!/usr/bin/env bash

set -e


################################################################################
### Head: labwc_config_install
##
labwc_config_install () {

	echo
	echo "##"
	echo "## Config Start: labwc_config_install"
	echo "##"
	echo

	#labwc_config_install_main
	labwc_config_install_main_each


	echo
}

##
### Tail: labwc_config_install
################################################################################


################################################################################
### Head: labwc_config_install_main
##
labwc_config_install_main () {

	echo
	echo "##"
	echo "## Install: labwc_config_install_main"
	echo "##"
	echo


	local source_dir_path="./config/labwc"
	local target_dir_path="${HOME}/.config/labwc"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	cp -rfv "${source_dir_path}/." "${target_dir_path}/"





	echo

}

labwc_config_install_main_each () {

	echo
	echo "##"
	echo "## Install: labwc_config_install_main"
	echo "##"
	echo


	local source_dir_path="./config/labwc"
	local target_dir_path="${HOME}/.config/labwc"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	#echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	#cp -rfv "${source_dir_path}/." "${target_dir_path}/"


	echo "install -Dm644 ${source_dir_path}/rc.xml ${target_dir_path}/rc.xml"
	install -Dm644 "${source_dir_path}/rc.xml" "${target_dir_path}/rc.xml"

	echo "install -Dm644 ${source_dir_path}/menu.xml ${target_dir_path}/menu.xml"
	install -Dm644 "${source_dir_path}/menu.xml" "${target_dir_path}/menu.xml"

	echo "install -Dm644 ${source_dir_path}/environment ${target_dir_path}/environment"
	install -Dm644 "${source_dir_path}/environment" "${target_dir_path}/environment"

	echo "install -Dm755 ${source_dir_path}/autostart ${target_dir_path}/autostart"
	install -Dm755 "${source_dir_path}/autostart" "${target_dir_path}/autostart"



	echo

}
##
### Tail: labwc_config_install_main
################################################################################


################################################################################
### Head: main
##
main_confing_install () {

	labwc_config_install

	return 0

}

main_confing_install
##
### Tail: main
################################################################################
