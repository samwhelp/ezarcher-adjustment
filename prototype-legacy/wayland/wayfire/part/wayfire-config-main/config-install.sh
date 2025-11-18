#!/usr/bin/env bash

set -e


################################################################################
### Head: wayfire_config_install
##
wayfire_config_install () {

	echo
	echo "##"
	echo "## Config Start: wayfire_config_install"
	echo "##"
	echo

	#wayfire_config_install_main
	wayfire_config_install_main_each

	#wf_shell_config_install_main
	wf_shell_config_install_main_each


	echo
}

##
### Tail: wayfire_config_install
################################################################################


################################################################################
### Head: wayfire_config_install_main
##
wayfire_config_install_main () {

	echo
	echo "##"
	echo "## Install: wayfire_config_install_main"
	echo "##"
	echo


	local source_dir_path="./config/wayfire"
	#local target_dir_path="${HOME}/.config/wayfire"
	local target_dir_path="${HOME}/.config"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	cp -rfv "${source_dir_path}/." "${target_dir_path}/"





	echo

}

wayfire_config_install_main_each () {

	echo
	echo "##"
	echo "## Install: wayfire_config_install_main_each"
	echo "##"
	echo


	local source_dir_path="./config/wayfire"
	#local target_dir_path="${HOME}/.config/wayfire"
	local target_dir_path="${HOME}/.config"

	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	#echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	#cp -rfv "${source_dir_path}/." "${target_dir_path}/"


	echo "install -Dm644 ${source_dir_path}/wayfire.ini ${target_dir_path}/wayfire.ini"
	install -Dm644 "${source_dir_path}/wayfire.ini" "${target_dir_path}/wayfire.ini"





	echo

}
##
### Tail: wayfire_config_install_main
################################################################################


################################################################################
### Head: wf_shell_config_install_main
##
wf_shell_config_install_main () {

	echo
	echo "##"
	echo "## Install: wf_shell_config_install_main"
	echo "##"
	echo


	local source_dir_path="./config/wf-shell"
	#local target_dir_path="${HOME}/.config/wf-shell"
	local target_dir_path="${HOME}/.config"


	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	cp -rfv "${source_dir_path}/." "${target_dir_path}/"





	echo

}

wf_shell_config_install_main_each () {

	echo
	echo "##"
	echo "## Install: wf_shell_config_install_main_each"
	echo "##"
	echo


	local source_dir_path="./config/wf-shell"
	#local target_dir_path="${HOME}/.config/wf-shell"
	local target_dir_path="${HOME}/.config"

	echo "mkdir -p ${target_dir_path}"
	mkdir -p "${target_dir_path}"

	echo

	#echo "cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	#cp -rfv "${source_dir_path}/." "${target_dir_path}/"


	echo "install -Dm644 ${source_dir_path}/wf-shell.ini ${target_dir_path}/wf-shell.ini"
	install -Dm644 "${source_dir_path}/wf-shell.ini" "${target_dir_path}/wf-shell.ini"





	echo

}
##
### Tail: wf_shell_config_install_main
################################################################################




################################################################################
### Head: main
##
main_confing_install () {

	wayfire_config_install

	return 0

}

main_confing_install
##
### Tail: main
################################################################################
