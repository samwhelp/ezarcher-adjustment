#!/usr/bin/env bash

set -e


################################################################################
### Head: nvim
##

nvim_config_install () {

	echo
	echo "##"
	echo "## Config: nvim"
	echo "##"
	echo


	nvim_config_install_by_dir

	#nvim_config_install_by_each_file


	echo

}

nvim_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

nvim_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/nvim"
	mkdir -p "${HOME}/.config/nvim"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/nvim/init.vim ${HOME}/.config/nvim/init.vim"
	install -Dm644 "./asset/overlay/etc/skel/.config/nvim/init.vim" "${HOME}/.config/nvim/init.vim"


}

##
### Tail: nvim
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	nvim_config_install

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
