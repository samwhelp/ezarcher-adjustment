#!/usr/bin/env bash

set -e


################################################################################
### Head: xfce
##

xfce_config_install () {

	echo
	echo "##"
	echo "## Config: xfce"
	echo "##"
	echo

	sys_xfconfd_stop

	xfce_config_install_by_dir

	#xfce_config_install_by_each_file


	echo

}

xfce_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}/.config/xfce4"
	mkdir -p "${HOME}/.config/xfce4"


	echo
	echo "cp -rf ./config/xfce4/. ${HOME}/.config/xfce4"
	cp -rf "./config/xfce4/." "${HOME}/.config/xfce4"



}

xfce_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/xfce4/xfconf/xfce-perchannel-xml"
	mkdir -p "${HOME}/.config/xfce4/xfconf/xfce-perchannel-xml"

	echo
	echo "install -Dm644 ./config/xfce4/helpers.rc ${HOME}/.config/xfce4/helpers.rc"
	install -Dm644 "./config/xfce4/helpers.rc" "${HOME}/.config/xfce4/helpers.rc"


}

##
### Tail: xfce
################################################################################


################################################################################
### Head: xfconfd
##

sys_xfconfd_stop () {

	if killall -9 xfconfd; then
		return 0
	fi

	return 0

}

##
### Tail: xfconfd
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	xfce_config_install

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
