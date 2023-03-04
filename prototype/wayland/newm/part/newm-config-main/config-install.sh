#!/usr/bin/env bash

set -e


################################################################################
### Head: newm_config_install
##
newm_config_install () {

	echo
	echo "##"
	echo "## Config Start: newm_config_install"
	echo "##"
	echo

	newm_config_install_main
	#newm_config_install_main_each


	echo
}

##
### Tail: newm_config_install
################################################################################


################################################################################
### Head: newm_config_install_main
##
newm_config_install_main () {

	echo
	echo "##"
	echo "## Install: newm_config_install_main"
	echo "##"
	echo


	local source_dir_path="./config/newm"
	local target_dir_path="${HOME}/.config/newm"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	cp -rfv "${source_dir_path}/." "${target_dir_path}/"





	echo

}

newm_config_install_main_each () {

	echo
	echo "##"
	echo "## Install: newm_config_install_main_each"
	echo "##"
	echo


	local source_dir_path="./config/newm"
	local target_dir_path="${HOME}/.config/newm"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	#echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	#cp -rfv "${source_dir_path}/." "${target_dir_path}/"


	echo "install -Dm644 ${source_dir_path}/config.py ${target_dir_path}/config.py"
	install -Dm644 "${source_dir_path}/config.py" "${target_dir_path}/config.py"


	echo

}
##
### Tail: newm_config_install_main
################################################################################


################################################################################
### Head: main
##
main_confing_install () {

	newm_config_install

	return 0

}

main_confing_install
##
### Tail: main
################################################################################
