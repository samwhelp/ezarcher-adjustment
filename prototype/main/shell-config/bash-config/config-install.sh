#!/usr/bin/env bash

set -e


################################################################################
### Head: bash
##

bash_config_install () {

	echo
	echo "##"
	echo "## Config: bash"
	echo "##"
	echo


	bash_config_install_by_dir

	#bash_config_install_by_each_file


	echo

}

bash_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

bash_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/bash"
	mkdir -p "${HOME}/.config/bash"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/bash/bash.conf ${HOME}/.config/bash/bash.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/bash/bash.conf" "${HOME}/.config/bash/bash.conf"


}

##
### Tail: bash
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	bash_config_install

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
