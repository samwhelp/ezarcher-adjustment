#!/usr/bin/env bash

set -e


################################################################################
### Head: pcmanfm-qt
##

pcmanfm_qt_config_install () {

	echo
	echo "##"
	echo "## Config: pcmanfm-qt"
	echo "##"
	echo


	pcmanfm_qt_config_install_by_dir

	#pcmanfm_qt_config_install_by_each_file


	echo

}

pcmanfm_qt_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}/.config/pcmanfm-qt"
	mkdir -p "${HOME}/.config/pcmanfm-qt"


	echo
	echo "cp -rf ./config/pcmanfm-qt/. ${HOME}/.config/pcmanfm-qt"
	cp -rf "./config/pcmanfm-qt/." "${HOME}/.config/pcmanfm-qt"


}

pcmanfm_qt_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/pcmanfm-qt/default"
	mkdir -p "${HOME}/.config/pcmanfm-qt/default"

	echo
	echo "install -Dm644 ./config/pcmanfm-qt/default/settings.conf ${HOME}/.config/pcmanfm-qt/default/settings.conf"
	install -Dm644 "./config/pcmanfm-qt/default/settings.conf" "${HOME}/.config/pcmanfm-qt/default/settings.conf"


}

##
### Tail: pcmanfm-qt
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	pcmanfm_qt_config_install

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
