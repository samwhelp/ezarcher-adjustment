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
#THE_MAIN_EXT_DIR_PATH="${THE_BASE_DIR_PATH}/../ext"
#source "${THE_MAIN_EXT_DIR_PATH}/init.sh"


#THE_PLAN_DIR_PATH="$THE_BASE_DIR_PATH"
#THE_CONFIG_FILE_PATH="${THE_PLAN_DIR_PATH}/demo.conf"
#source "$THE_CONFIG_FILE_PATH"
#. "$THE_CONFIG_FILE_PATH"

##
### Tail: Init
################################################################################


################################################################################
### Head: Util / Debug
##

util_error_echo () {
	echo "$@" 1>&2
}

##
### Head: Util / Debug
################################################################################


################################################################################
### Head: xfce
##

config_xfce () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## Config: xfce"
	util_error_echo "##"
	util_error_echo

	#mod_config_xfce_wallpaper

	#mod_config_xfce_color_scheme

	mod_config_xfce_wm_theme

	mod_config_xfce_gtk_theme

	mod_config_xfce_icon_theme

	mod_config_xfce_cursor_theme



	util_error_echo

	return 0

}

mod_config_xfce_wallpaper () {

	##
	## * https://github.com/samwhelp/note-about-fzf/blob/gh-pages/_demo/project/wallpaper-select/wallpaper-select-xfce/wallpaper-select-xfce#L555-L585
	## * https://github.com/samwhelp/note-about-wallpaper/blob/gh-pages/_demo/project/opset-wallpaper/opset-wallpaper-xfce/opset-wallpaper-xfce#L20-L47
	##

	return 0

}

mod_config_xfce_color_scheme () {

	return 0

}

mod_config_xfce_wm_theme () {

	util_error_echo
	util_error_echo "xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Orchis-Dark'"
	xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Orchis-Dark'

	return 0

}

mod_config_xfce_gtk_theme () {

	util_error_echo
	util_error_echo "xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Orchis-Dark'"
	xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Orchis-Dark'

	return 0

}

mod_config_xfce_icon_theme () {

	util_error_echo
	util_error_echo "xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Papirus-Dark'"
	xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Papirus-Dark'

	return 0

}

mod_config_xfce_cursor_theme () {

	util_error_echo
	util_error_echo "xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s 'Qogir'"
	xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s 'Qogir'
	#xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s 'xcursor-Qogir'

	util_error_echo
	util_error_echo "xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s '24'"
	xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s '24'

	return 0

}


##
### Tail: xfce
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	config_xfce

	return 0

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
