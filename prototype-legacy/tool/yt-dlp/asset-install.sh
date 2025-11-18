#!/usr/bin/env bash

set -e


################################################################################
### Head: yt-dlp
##

yt_dlp_asset_install () {

	echo
	echo "##"
	echo "## Install: yt-dlp"
	echo "##"
	echo


	yt_dlp_download

	echo

}

yt_dlp_download () {

	if [ -f "${HOME}/.local/bin/yt-dlp" ]; then
		echo
		echo "## Exists: ${HOME}/.local/bin/yt-dlp"
		echo

		echo
		echo "which yt-dlp"
		echo
		which yt-dlp

		echo
		echo "yt-dlp -U"
		echo
		yt-dlp -U

		return
	fi


	##
	## https://github.com/yt-dlp/yt-dlp/wiki/Installation#using-the-release-binary
	##

	## download

	echo
	echo "mkdir -p ${HOME}/.local/bin"
	mkdir -p "${HOME}/.local/bin"

	echo
	echo "wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O ${HOME}/.local/bin/yt-dlp"
	wget "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp" -O "${HOME}/.local/bin/yt-dlp"

	echo
	echo "chmod 755 ${HOME}/.local/bin/yt-dlp"
	chmod 755 "${HOME}/.local/bin/yt-dlp"


	echo
	echo "which yt-dlp"
	echo
	which yt-dlp


	echo

}

##
### Tail: yt-dlp
################################################################################


################################################################################
### Head: asset_install
##

main_asset_install () {

	yt_dlp_asset_install

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
