#!/usr/bin/env bash

set -e


################################################################################
### Head: fzf
##

fzf_config_install () {

	echo
	echo "##"
	echo "## Config: fzf"
	echo "##"
	echo


	#echo
	#echo "mkdir -p ${HOME}/.config/fzf"
	#mkdir -p "${HOME}/.config/fzf"


	#echo
	#echo "cp -rf ./config/fzf/. ${HOME}/.config/fzf"
	#cp -rf "./config/fzf/." "${HOME}/.config/fzf"


	echo
	echo "install -Dm644 ./config/fzf/.fzf-load.bash ${HOME}/.fzf-load.bash"
	install -Dm644 "./config/fzf/.fzf-load.bash" "${HOME}/.fzf-load.bash"


	echo

}

##
### Tail: fzf
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	fzf_config_install

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
