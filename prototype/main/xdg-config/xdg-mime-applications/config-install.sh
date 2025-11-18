#!/usr/bin/env bash

set -e


################################################################################
### Head: xdg
##

xdg_mime_applications_config_install () {

	echo
	echo "##"
	echo "## Config: xdg"
	echo "##"
	echo


	xdg_mime_applications_config_install_by_dir

	#xdg_mime_applications_config_install_by_each_file


	echo

	return 0

}

xdg_mime_applications_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


	return 0

}

xdg_mime_applications_config_install_by_each_file () {


	echo
	echo "install -dm755 ${HOME}/.config"
	install -dm755 "${HOME}/.config"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/mimeapps.list ${HOME}/.config/mimeapps.list"
	install -Dm644 "./asset/overlay/etc/skel/.config/mimeapps.list" "${HOME}/.config/mimeapps.list"


	return 0

}

##
### Tail: xdg
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	xdg_mime_applications_config_install

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
