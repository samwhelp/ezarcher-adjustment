#!/usr/bin/env bash

set -e


################################################################################
### Head: vim
##

vim_config_install () {

	echo
	echo "##"
	echo "## Config: vim"
	echo "##"
	echo


	vim_config_install_by_dir

	#vim_config_install_by_each_file


	echo

}

vim_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

vim_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.vim"
	mkdir -p "${HOME}/.vim"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.vim/vimrc ${HOME}/.config/.vim/vimrc"
	install -Dm644 "./asset/overlay/etc/skel/.vim/vimrc" "${HOME}/.vim/vimrc"


}

##
### Tail: vim
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	vim_config_install

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
