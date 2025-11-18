#!/usr/bin/env bash

set -e


################################################################################
### Head: krunner
##

krunner_config_install () {

	echo
	echo "##"
	echo "## Config: krunner"
	echo "##"
	echo


	krunner_config_install_by_dir

	#krunner_config_install_by_each_file


	echo

}

krunner_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"



}

krunner_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config"
	mkdir -p "${HOME}/.config"


	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/krunnerrc ${HOME}/.config/krunnerrc"
	install -Dm644 "./asset/overlay/etc/skel/.config/krunnerrc" "${HOME}/.config/krunnerrc"


}

##
### Tail: krunner
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	krunner_config_install

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
