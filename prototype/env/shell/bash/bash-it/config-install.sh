#!/usr/bin/env bash

set -e


################################################################################
### Head: bash_it
##

bash_it_config_install () {

	echo
	echo "##"
	echo "## Config: bash_it"
	echo "##"
	echo


	#echo
	#echo "mkdir -p ${HOME}/.config/bash-it"
	#mkdir -p "${HOME}/.config/bash-it"


	#echo
	#echo "cp -rf ./config/bash-it/. ${HOME}/.config/bash-it"
	#cp -rf "./config/bash-it/." "${HOME}/.config/bash-it"


	echo
	echo "mkdir -p ${HOME}/.bash_it"
	mkdir -p "${HOME}/.bash_it"

	echo
	echo "cp -rf ./config/bash-it/.bash_it/. ${HOME}/.bash_it"
	cp -rf "./config/bash-it/.bash_it/." "${HOME}/.bash_it"



	echo
	echo "install -Dm644 ./config/bash-it/.bash_it_profile ${HOME}/.bash_it_profile"
	install -Dm644 "./config/bash-it/.bash_it_profile" "${HOME}/.bash_it_profile"


	echo

}

##
### Tail: bash_it
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	bash_it_config_install

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
