#!/usr/bin/env bash

set -e


################################################################################
### Head: bash_it
##

bash_it_asset_install () {

	echo
	echo "##"
	echo "## Install: bash_it"
	echo "##"
	echo


	bash_it_clone_repo

	echo

}

bash_it_clone_repo () {

	if [ -d "${HOME}/.bash_it" ]; then
		echo
		echo "## Exists: ${HOME}/.bash_it"
		echo

		return
	fi


	##
	## https://github.com/Bash-it/bash-it
	##

	## clone

	echo
	echo "git clone --depth=1 https://github.com/Bash-it/bash-it.git ${HOME}/.bash_it"
	git clone --depth=1 "https://github.com/Bash-it/bash-it.git" "${HOME}/.bash_it"

	echo

}

##
### Tail: bash_it
################################################################################


################################################################################
### Head: asset_install
##

main_asset_install () {

	bash_it_asset_install

}

##
### Tail: asset_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_asset_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
