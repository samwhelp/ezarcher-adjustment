#!/usr/bin/env bash

set -e


################################################################################
### Head: kate
##

kate_config_install () {

	echo
	echo "##"
	echo "## Config: kate"
	echo "##"
	echo


	kate_config_install_by_dir

	#kate_config_install_by_each_file


	echo

}

kate_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

kate_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config"
	mkdir -p "${HOME}/.config"

	echo
	echo "mkdir -p ${HOME}/.local/share/kate"
	mkdir -p "${HOME}/.local/share/kate"

	echo
	echo "mkdir -p ${HOME}/.local/share/kxmlgui5/kate"
	mkdir -p "${HOME}/.local/share/kxmlgui5/kate"


	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/katerc ${HOME}/.config/katerc"
	install -Dm644 "./asset/overlay/etc/skel/.config/katerc" "${HOME}/.config/katerc"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/kate/anonymous.katesession ${HOME}/.local/share/kate/anonymous.katesession"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/kate/anonymous.katesession" "${HOME}/.local/share/kate/anonymous.katesession"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/kxmlgui5/kate/kateui.rc ${HOME}/.local/share/kxmlgui5/kate/kateui.rc"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/kxmlgui5/kate/kateui.rc" "${HOME}/.local/share/kxmlgui5/kate/kateui.rc"

}

##
### Tail: kate
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	kate_config_install

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
