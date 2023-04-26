#!/usr/bin/env bash

set -e


################################################################################
### Head: thunar
##

thunar_config_install () {

	echo
	echo "##"
	echo "## Config: thunar"
	echo "##"
	echo


	thunar_config_install_by_dir

	#thunar_config_install_by_each_file


	echo

}

thunar_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}/.config/Thunar"
	mkdir -p "${HOME}/.config/Thunar"


	echo
	echo "cp -rf ./config/thunar/Thunar/. ${HOME}/.config/Thunar"
	cp -rf "./config/thunar/Thunar/." "${HOME}/.config/Thunar"




	echo
	echo "mkdir -p ${HOME}/.config/xfce4"
	mkdir -p "${HOME}/.config/xfce4"


	echo
	echo "cp -rf ./config/thunar/xfce4/. ${HOME}/.config/xfce4"
	cp -rf "./config/thunar/xfce4/." "${HOME}/.config/xfce4"



}

thunar_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/Thunar"
	mkdir -p "${HOME}/.config/Thunar"

	echo
	echo "install -Dm644 ./config/thunar/Thunar/uca.xml ${HOME}/.config/Thunar/uca.xml"
	install -Dm644 "./config/thunar/Thunar/uca.xml" "${HOME}/.config/Thunar/uca.xml"

	echo
	echo "install -Dm644 ./config/thunar/Thunar/accels.scm ${HOME}/.config/Thunar/accels.scm"
	install -Dm644 "./config/thunar/Thunar/accels.scm" "${HOME}/.config/Thunar/accels.scm"

	echo

	echo
	echo "mkdir -p ${HOME}/.config/xfce4/xfconf/xfce-perchannel-xml"
	mkdir -p "${HOME}/.config/xfce4/xfconf/xfce-perchannel-xml"

	echo
	echo "install -Dm644 ./config/thunar/xfce4/xfconf/xfce-perchannel-xml/thunar.xml ${HOME}/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml"
	install -Dm644 "./config/thunar/xfce4/xfconf/xfce-perchannel-xml/thunar.xml" "${HOME}/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml"

	#echo
	#echo "install -Dm644 ./config/thunar/xfce4/helpers.rc ${HOME}/.config/xfce4/helpers.rc"
	#install -Dm644 "./config/thunar/xfce4/helpers.rc" "${HOME}/.config/xfce4/helpers.rc"



}

##
### Tail: thunar
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	thunar_config_install

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
