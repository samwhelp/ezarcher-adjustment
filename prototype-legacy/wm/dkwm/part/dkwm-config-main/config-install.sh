#!/usr/bin/env bash

set -e


################################################################################
### Head: dkwm_config_install
##
dkwm_config_install () {

	echo
	echo "##"
	echo "## Config Start: dkwm_config_install"
	echo "##"
	echo

	dkwm_config_install_main
	#dkwm_config_install_main_each


	echo
}

##
### Tail: dkwm_config_install
################################################################################


################################################################################
### Head: dkwm_config_install_main
##
dkwm_config_install_main () {

	echo
	echo "##"
	echo "## Install: dkwm_config_install_main"
	echo "##"
	echo


	local source_dir_path="./config/dk"
	local target_dir_path="${HOME}/.config/dk"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	cp -rfv "${source_dir_path}/." "${target_dir_path}/"





	echo

}

dkwm_config_install_main_each () {

	echo
	echo "##"
	echo "## Install: dkwm_config_install_main_each"
	echo "##"
	echo


	local source_dir_path="./config/dk"
	local target_dir_path="${HOME}/.config/dk"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	#echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	#cp -rfv "${source_dir_path}/." "${target_dir_path}/"


	echo "install -Dm755 ${source_dir_path}/dkrc ${target_dir_path}/dkrc"
	install -Dm644 "${source_dir_path}/dkrc" "${target_dir_path}/dkrc"

	echo "install -Dm644 ${source_dir_path}/sxhkdrc ${target_dir_path}/sxhkdrc"
	install -Dm644 "${source_dir_path}/sxhkdrc" "${target_dir_path}/sxhkdrc"

	echo

}
##
### Tail: dkwm_config_install_main
################################################################################


################################################################################
### Head: main
##
main_confing_install () {

	dkwm_config_install

	return 0

}

main_confing_install
##
### Tail: main
################################################################################
