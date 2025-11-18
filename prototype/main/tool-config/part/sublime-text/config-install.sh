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
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

sublime_text_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/sublime-text"
	mkdir -p "${HOME}/.config/sublime-text"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/sublime-text/sublime-text.conf ${HOME}/.config/sublime-text/sublime-text.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/sublime-text/sublime-text.conf" "${HOME}/.config/sublime-text/sublime-text.conf"


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
