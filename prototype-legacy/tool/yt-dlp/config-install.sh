#!/usr/bin/env bash

set -e


################################################################################
### Head: yt-dlp
##

yt_dlp_config_install () {

	echo
	echo "##"
	echo "## Config: yt-dlp"
	echo "##"
	echo


	echo
	echo "install -Dm644 ./config/yt-dlp/config ${HOME}/.config/yt-dlp/config"
	install -Dm644 "./config/yt-dlp/config" "${HOME}/.config/yt-dlp/config"

	echo

}

##
### Tail: yt-dlp
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	yt_dlp_config_install

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
