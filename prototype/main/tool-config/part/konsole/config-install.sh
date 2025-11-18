#!/usr/bin/env bash

set -e


################################################################################
### Head: konsole
##

konsole_config_install () {

	echo
	echo "##"
	echo "## Config: konsole"
	echo "##"
	echo


	konsole_config_install_by_dir

	#konsole_config_install_by_each_file


	echo

}

konsole_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"



}

konsole_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config"
	mkdir -p "${HOME}/.config"

	echo
	echo "mkdir -p ${HOME}/.local/share/konsole"
	mkdir -p "${HOME}/.local/share/konsole"

	echo
	echo "mkdir -p ${HOME}/.local/share/kxmlgui5"
	mkdir -p "${HOME}/.local/share/kxmlgui5"


	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/konsolerc ${HOME}/.config/konsolerc"
	install -Dm644 "./asset/overlay/etc/skel/.config/konsolerc" "${HOME}/.config/konsolerc"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/konsole/Main.colorscheme ${HOME}/.local/share/konsole/Main.colorscheme"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/konsole/Main.colorscheme" "${HOME}/.local/share/konsole/Main.colorscheme"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/konsole/Main.profile ${HOME}/.local/share/konsole/Main.profile"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/konsole/Main.profile" "${HOME}/.local/share/konsole/Main.profile"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/kxmlgui5/konsole/konsoleui.rc ${HOME}/.local/share/kxmlgui5/konsole/konsoleui.rc"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/kxmlgui5/konsole/konsoleui.rc" "${HOME}/.local/share/kxmlgui5/konsole/konsoleui.rc"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/kxmlgui5/konsole/sessionui.rc ${HOME}/.local/share/kxmlgui5/konsole/sessionui.rc"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/kxmlgui5/konsole/sessionui.rc" "${HOME}/.local/share/kxmlgui5/konsole/sessionui.rc"


}

##
### Tail: konsole
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	konsole_config_install

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
