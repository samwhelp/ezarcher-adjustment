#!/usr/bin/env bash

set -e


################################################################################
### Head: dolphin
##

dolphin_config_install () {

	echo
	echo "##"
	echo "## Config: dolphin"
	echo "##"
	echo


	dolphin_config_install_by_dir

	#dolphin_config_install_by_each_file


	echo

}

dolphin_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"



}

dolphin_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config"
	mkdir -p "${HOME}/.config"

	echo
	echo "mkdir -p ${HOME}/.local/share/dolphin/view_properties/global"
	mkdir -p "${HOME}/.local/share/dolphin/view_properties/global"

	echo
	echo "mkdir -p ${HOME}/.local/share/kxmlgui5"
	mkdir -p "${HOME}/.local/share/kxmlgui5"


	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/dolphinrc ${HOME}/.config/dolphinrc"
	install -Dm644 "./asset/overlay/etc/skel/.config/dolphinrc" "${HOME}/.config/dolphinrc"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/dolphin/dolphinstaterc ${HOME}/.local/share/dolphin/dolphinstaterc"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/dolphin/dolphinstaterc" "${HOME}/.local/share/dolphin/dolphinstaterc"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/dolphin/view_properties/global/.directory ${HOME}/.local/share/dolphin/view_properties/global/.directory"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/dolphin/view_properties/global/.directory" "${HOME}/.local/share/dolphin/view_properties/global/.directory"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/kxmlgui5/dolphin/dolphinui.rc ${HOME}/.local/share/kxmlgui5/dolphin/dolphinui.rc"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/kxmlgui5/dolphin/dolphinui.rc" "${HOME}/.local/share/kxmlgui5/dolphin/dolphinui.rc"

}

##
### Tail: dolphin
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	dolphin_config_install

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
