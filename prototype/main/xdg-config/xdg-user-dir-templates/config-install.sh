#!/usr/bin/env bash

set -e


################################################################################
### Head: xdg
##

xdg_user_dir_templates_config_install () {

	echo
	echo "##"
	echo "## Config: xdg"
	echo "##"
	echo


	xdg_user_dir_templates_config_install_by_dir

	#xdg_user_dir_templates_config_install_by_each_file


	echo

	return 0

}

xdg_user_dir_templates_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"

	return 0

}

xdg_user_dir_templates_config_install_by_each_file () {


	echo
	echo "install -dm755 ${HOME}/Templates"
	install -dm755 "${HOME}/Templates"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/Templates/bash.sh ${HOME}/Templates/bash.sh"
	install -Dm644 "./asset/overlay/etc/skel/Templates/bash.sh" "${HOME}/Templates/bash.sh"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/Templates/dl.sh ${HOME}/Templates/dl.sh"
	install -Dm644 "./asset/overlay/etc/skel/Templates/dl.sh" "${HOME}/Templates/dl.sh"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/Templates/empty.txt ${HOME}/Templates/empty.txt"
	install -Dm644 "./asset/overlay/etc/skel/Templates/empty.txt" "${HOME}/Templates/empty.txt"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/Templates/iso-to-usb.sh ${HOME}/Templates/iso-to-usb.sh"
	install -Dm644 "./asset/overlay/etc/skel/Templates/iso-to-usb.sh" "${HOME}/Templates/iso-to-usb.sh"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/Templates/pygithub.py ${HOME}/Templates/pygithub.py"
	install -Dm644 "./asset/overlay/etc/skel/Templates/pygithub.py" "${HOME}/Templates/pygithub.py"




	return 0

}

##
### Tail: xdg
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	xdg_user_dir_templates_config_install

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
