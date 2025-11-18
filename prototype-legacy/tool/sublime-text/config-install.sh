#!/usr/bin/env bash

set -e


################################################################################
### Head: sublime-text
##

sublime_text_config_install () {

	echo
	echo "##"
	echo "## Config: sublime-text"
	echo "##"
	echo


	sublime_text_config_install_by_dir

	#sublime_text_config_install_by_each_file


	echo

}

sublime_text_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}/.config/sublime-text/Packages/User"
	mkdir -p "${HOME}/.config/sublime-text/Packages/User"


	echo
	echo "cp -rf ./config/sublime-text/Packages/User/. ${HOME}/.config/sublime-text/Packages/User"
	cp -rf "./config/sublime-text/Packages/User/." "${HOME}/.config/sublime-text/Packages/User"


}

sublime_text_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/sublime-text/Packages/User"
	mkdir -p "${HOME}/.config/sublime-text/Packages/User"

	echo
	echo "install -Dm644 ./config/sublime-text/Packages/User/Preferences.sublime-settings $HOME/.config/sublime-text/Packages/User/Preferences.sublime-settings"
	install -Dm644 "./config/sublime-text/Packages/User/Preferences.sublime-settings" "$HOME/.config/sublime-text/Packages/User/Preferences.sublime-settings"


}

##
### Tail: sublime-text
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	sublime_text_config_install

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
