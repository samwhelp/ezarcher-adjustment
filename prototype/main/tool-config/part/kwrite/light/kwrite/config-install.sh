#!/usr/bin/env bash

set -e


################################################################################
### Head: kwrite
##

kwrite_config_install () {

	echo
	echo "##"
	echo "## Config: kwrite"
	echo "##"
	echo


	kwrite_config_install_by_dir

	#kwrite_config_install_by_each_file


	echo

}

kwrite_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

kwrite_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config"
	mkdir -p "${HOME}/.config"

	echo
	echo "mkdir -p ${HOME}/.local/share/kwrite"
	mkdir -p "${HOME}/.local/share/kwrite"

	echo
	echo "mkdir -p ${HOME}/.local/share/kxmlgui5/kwrite"
	mkdir -p "${HOME}/.local/share/kxmlgui5/kwrite"


	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/kwriterc ${HOME}/.config/kwriterc"
	install -Dm644 "./asset/overlay/etc/skel/.config/kwriterc" "${HOME}/.config/kwriterc"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/kwrite/anonymous.katesession ${HOME}/.local/share/kwrite/anonymous.katesession"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/kwrite/anonymous.katesession" "${HOME}/.local/share/kwrite/anonymous.katesession"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/kxmlgui5/kwrite/kateui.rc ${HOME}/.local/share/kxmlgui5/kwrite/kateui.rc"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/kxmlgui5/kwrite/kateui.rc" "${HOME}/.local/share/kxmlgui5/kwrite/kateui.rc"

}

##
### Tail: kwrite
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	kwrite_config_install

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
