#!/usr/bin/env bash


################################################################################
### Head: Bash / Option
##

##
## $ man bash
## $ help set
##

## > Exit immediately if a command exits with a non-zero status.
set -e

##
### Tail: Bash / Option
################################################################################


################################################################################
### Head: Note
##

## * https://github.com/samwhelp/skel-project-plan/blob/gh-pages/demo/sh/project/bin/install.sh

##
### Tail: Note
################################################################################


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_MAIN_EXT_DIR_PATH="${THE_BASE_DIR_PATH}/ext"
source "${THE_MAIN_EXT_DIR_PATH}/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: mate
##

config_mate () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## Config: mate"
	util_error_echo "##"
	util_error_echo

	#mod_config_mate_wallpaper

	#mod_config_mate_color_scheme

	mod_config_mate_wm_theme

	mod_config_mate_gtk_theme

	mod_config_mate_icon_theme

	mod_config_mate_cursor_theme



	util_error_echo

	return 0

}

mod_config_mate_wallpaper () {


	##
	## * https://github.com/samwhelp/note-about-wallpaper/blob/gh-pages/_demo/project/opset-wallpaper/opset-wallpaper-mate/opset-wallpaper-mate#L21-L33
	##

	util_error_echo
	util_error_echo "gsettings set org.mate.background picture-filename '/usr/share/backgrounds/default.jpg'"
	gsettings set org.mate.background picture-filename '/usr/share/backgrounds/default.jpg'

	util_error_echo
	util_error_echo "gsettings set org.mate.background picture-options 'zoom'"
	gsettings set org.mate.background picture-options 'zoom'

	#util_error_echo
	#util_error_echo "gsettings set org.mate.background picture-options 'stretched'"
	#gsettings set org.mate.background picture-options 'stretched'

	return 0

}

mod_config_mate_color_scheme () {

	return 0

}

mod_config_mate_wm_theme () {

	util_error_echo
	util_error_echo "gsettings set org.mate.Marco.general theme '${THE_GTK_THEME_NAME}'"
	gsettings set org.mate.Marco.general theme "'${THE_GTK_THEME_NAME}'"

	return 0

}

mod_config_mate_gtk_theme () {

	util_error_echo
	util_error_echo "gsettings set org.mate.interface gtk-theme '${THE_GTK_THEME_NAME}'"
	gsettings set org.mate.interface gtk-theme "'${THE_GTK_THEME_NAME}'"

	return 0

}

mod_config_mate_icon_theme () {

	util_error_echo
	util_error_echo "gsettings set org.mate.interface icon-theme '${THE_ICON_THEME_NAME}'"
	gsettings set org.mate.interface icon-theme "'${THE_ICON_THEME_NAME}'"

	return 0

}

mod_config_mate_cursor_theme () {

	util_error_echo
	util_error_echo "gsettings set org.mate.peripherals-mouse cursor-theme '${THE_CURSOR_THEME_NAME}'"
	gsettings set org.mate.peripherals-mouse cursor-theme "'${THE_CURSOR_THEME_NAME}'"

	util_error_echo
	util_error_echo "gsettings set org.mate.peripherals-mouse cursor-size ${THE_CURSOR_SIZE}"
	gsettings set org.mate.peripherals-mouse cursor-size "${THE_CURSOR_SIZE}"

	return 0

}


##
### Tail: mate
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	config_mate

	return 0

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
