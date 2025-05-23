#!/usr/bin/env bash

set -e


################################################################################
### Head: rofi
##

rofi_config_install () {

	echo
	echo "##"
	echo "## Config: rofi"
	echo "##"
	echo


	rofi_config_install_by_dir

	#rofi_config_install_by_each_file


	echo

}

rofi_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}/.config/rofi"
	mkdir -p "${HOME}/.config/rofi"


	echo
	echo "cp -rf ./config/rofi/. ${HOME}/.config/rofi"
	cp -rf "./config/rofi/." "${HOME}/.config/rofi"




	echo
	echo "mkdir -p ${HOME}/.local/share/applications"
	mkdir -p "${HOME}/.local/share/applications"


	echo
	echo "cp -rf ./config/applications/. ${HOME}/.local/share/applications"
	cp -rf "./config/applications/." "${HOME}/.local/share/applications"

}

rofi_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/rofi"
	mkdir -p "${HOME}/.config/rofi"

	echo
	echo "install -Dm644 ./config/rofi/config.rasi ${HOME}/.config/rofi/config.rasi"
	install -Dm644 "./config/rofi/config.rasi" "${HOME}/.config/rofi/config.rasi"



	echo
	echo "mkdir -p ${HOME}/.local/share/applications"
	mkdir -p "${HOME}/.local/share/applications"


	echo
	echo "install -Dm644 ./config/applications/rofi-show-drun.desktop ${HOME}/.local/share/applications/rofi-show-drun.desktop"
	install -Dm644 "./config/applications/rofi-show-drun.desktop" "${HOME}/.local/share/applications/rofi-show-drun.desktop"


	echo
	echo "install -Dm644 ./config/applications/rofi-show-run.desktop ${HOME}/.local/share/applications/rofi-show-run.desktop"
	install -Dm644 "./config/applications/rofi-show-run.desktop" "${HOME}/.local/share/applications/rofi-show-run.desktop"


	echo
	echo "install -Dm644 ./config/applications/rofi-show-window.desktop ${HOME}/.local/share/applications/rofi-show-window.desktop"
	install -Dm644 "./config/applications/rofi-show-window.desktop" "${HOME}/.local/share/applications/rofi-show-window.desktop"


}

##
### Tail: rofi
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	rofi_config_install

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
