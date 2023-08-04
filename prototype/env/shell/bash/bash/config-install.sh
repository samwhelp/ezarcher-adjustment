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


	#echo
	#echo "mkdir -p ${HOME}"
	#mkdir -p "${HOME}"


	#echo
	#echo "cp -rf ./config/bash/. ${HOME}"
	#cp -rf "./config/bash/." "${HOME}"


	echo
	echo "install -Dm644 ./config/bash/.bash_profile ${HOME}/.bash_profile"
	install -Dm644 "./config/bash/.bash_profile" "${HOME}/.bash_profile"

	echo
	echo "install -Dm644 ./config/bash/.bashrc ${HOME}/.bashrc"
	install -Dm644 "./config/bash/.bashrc" "${HOME}/.bashrc"

	echo
	echo "install -Dm644 ./config/bash/.path ${HOME}/.path"
	install -Dm644 "./config/bash/.path" "${HOME}/.path"

	echo
	echo "install -Dm644 ./config/bash/.alias ${HOME}/.alias"
	install -Dm644 "./config/bash/.alias" "${HOME}/.alias"

	echo
	echo "install -Dm644 ./config/bash/.prompt ${HOME}/.prompt"
	install -Dm644 "./config/bash/.prompt" "${HOME}/.prompt"

	echo
	echo "install -Dm644 ./config/bash/.color ${HOME}/.color"
	install -Dm644 "./config/bash/.color" "${HOME}/.color"

	echo

}

bash_config_install_create_bin_dir () {

	echo
	echo "mkdir -p ${HOME}/.local/bin"
	mkdir -p "${HOME}/.local/bin"

	echo
	echo "mkdir -p ${HOME}/bin"
	mkdir -p "${HOME}/bin"

	echo
}

##
### Tail: bash
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	bash_config_install

	bash_config_install_create_bin_dir
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
