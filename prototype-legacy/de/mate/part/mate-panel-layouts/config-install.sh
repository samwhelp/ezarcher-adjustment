#!/usr/bin/env bash

set -e


################################################################################
### Head: mate_panel_layouts_config_install
##
mate_panel_layouts_config_install () {

	echo
	echo "##"
	echo "## Config Start: mate-panel-layouts"
	echo "##"
	echo

	mate_panel_layouts_config_install_layouts
	mate_panel_layouts_config_install_helper


	echo
}

##
### Tail: mate_panel_layouts_config_install
################################################################################


################################################################################
### Head: mate_panel_layouts_config_install_layouts
##
mate_panel_layouts_config_install_layouts () {

	echo
	echo "##"
	echo "## Install: mate_panel_layouts_config_install_layouts"
	echo "##"
	echo


	local source_dir_path="./config/mate-panel-layouts"
	local target_dir_path="/usr/share/mate-panel/layouts"


	echo "sudo mkdir -p ${target_dir_path}"
	sudo mkdir -p "${target_dir_path}"

	echo

	echo "sudo cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	sudo cp -rfv "${source_dir_path}/." "${target_dir_path}/"


	#echo "sudo install -Dm644 ${source_dir_path}/stand-alone-top.layout ${target_dir_path}/stand-alone-top.layout"
	#sudo install -Dm644 "${source_dir_path}/stand-alone-top.layout" "${target_dir_path}/stand-alone-top.layout"



	echo

}
##
### Tail: mate_panel_layouts_config_install_layouts
################################################################################


################################################################################
### Head: mate_panel_layouts_config_install_helper
##
mate_panel_layouts_config_install_helper () {

	echo
	echo "##"
	echo "## Install: mate_panel_layouts_config_install_helper"
	echo "##"
	echo


	local source_dir_path="./config/helper"
	local target_dir_path="/usr/local/bin"


	echo "sudo mkdir -p ${target_dir_path}"
	sudo mkdir -p "${target_dir_path}"

	echo

	echo "sudo cp -rfv ${source_dir_path}/. ${target_dir_path}/"
	sudo cp -rfv "${source_dir_path}/." "${target_dir_path}/"


	#echo "sudo install -Dm755 ${source_dir_path}/mate-panel-layout-ctrl-set ${target_dir_path}/mate-panel-layout-ctrl-set"
	#sudo install -Dm755 "${source_dir_path}/mate-panel-layout-ctrl-set" "${target_dir_path}/mate-panel-layout-ctrl-set"


	echo
}
##
### Tail: mate_panel_layouts_config_install_helper
################################################################################




################################################################################
### Head: main
##
main_confing_install () {

	mate_panel_layouts_config_install

	return 0

}

main_confing_install
##
### Tail: main
################################################################################
