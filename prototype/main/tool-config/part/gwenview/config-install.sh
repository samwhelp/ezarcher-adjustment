#!/usr/bin/env bash

set -e


################################################################################
### Head: gwenview
##

gwenview_config_install () {

	echo
	echo "##"
	echo "## Config: gwenview"
	echo "##"
	echo


	gwenview_config_install_by_dir

	#gwenview_config_install_by_each_file


	echo

}

gwenview_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

gwenview_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config"
	mkdir -p "${HOME}/.config"

	echo
	echo "mkdir -p ${HOME}/.local/share/kxmlgui5/gwenview"
	mkdir -p "${HOME}/.local/share/kxmlgui5/gwenview"


	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/gwenviewrc ${HOME}/.config/gwenviewrc"
	install -Dm644 "./asset/overlay/etc/skel/.config/gwenviewrc" "${HOME}/.config/gwenviewrc"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/kxmlgui5/gwenview/gwenviewui.rc ${HOME}/.local/share/kxmlgui5/gwenview/gwenviewui.rc"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/kxmlgui5/gwenview/gwenviewui.rc" "${HOME}/.local/share/kxmlgui5/gwenview/gwenviewui.rc"

}

##
### Tail: gwenview
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	gwenview_config_install

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
