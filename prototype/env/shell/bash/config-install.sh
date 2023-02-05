#!/usr/bin/env bash

set -e


################################################################################
### Head: bash
##
bash_config_install () {

	echo "## Config: bash"
	echo


	echo "Do Nothing"

	#echo "mkdir -p $HOME/.config/bash"
	#mkdir -p "$HOME/.config/bash"


	#echo "install -Dm644 ./config/bash/bash.conf $HOME/.config/bash/bash.conf"
	#install -Dm644 "./config/bash/bash.conf" "$HOME/.config/bash/bash.conf"


	echo
}


##
### Tail: bash
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	bash_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
