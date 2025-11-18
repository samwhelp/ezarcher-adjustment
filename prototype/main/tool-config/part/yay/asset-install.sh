#!/usr/bin/env bash

set -e


################################################################################
### Head: yay
##

yay_asset_install () {

	echo
	echo "##"
	echo "## Asset: yay"
	echo "##"
	echo




	yay_util_install_via_binary

	#yay_util_install_via_source




	echo

}

yay_util_install_via_binary () {

	sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

}


yay_util_install_via_source () {

	sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

}

##
### Tail: yay
################################################################################


################################################################################
### Head: asset_install
##

main_asset_install () {

	yay_asset_install

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
