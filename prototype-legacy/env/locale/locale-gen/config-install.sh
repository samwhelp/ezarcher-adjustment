#!/usr/bin/env bash

set -e


################################################################################
### Head: locale_gen
##

locale_gen_config_install () {

	echo
	echo "##"
	echo "## Config: locale_gen"
	echo "##"
	echo


	#echo
	#echo "sudo mkdir -p /etc"
	#mkdir -p "/etc"


	#echo
	#echo "cp -rf ./config/locale/. /etc"
	#cp -rf "./config/locale/." /etc"


	echo
	echo "sudo install -Dm644 ./config/locale/locale.gen /etc/locale.gen"
	sudo install -Dm644 "./config/locale/locale.gen" "/etc/locale.gen"


	echo
	echo "sudo locale-gen"
	echo
	sudo locale-gen

	echo

}

##
### Tail: locale_gen
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	locale_gen_config_install

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
