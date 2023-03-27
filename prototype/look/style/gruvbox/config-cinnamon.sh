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
### Head: cinnamon
##

config_cinnamon () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## Config: cinnamon"
	util_error_echo "##"
	util_error_echo

	#mod_config_cinnamon_wallpaper

	#mod_config_cinnamon_color_scheme

	mod_config_cinnamon_wm_theme

	mod_config_cinnamon_gtk_theme

	mod_config_cinnamon_icon_theme

	mod_config_cinnamon_cursor_theme

	mod_config_cinnamon_fallback_theme


	util_error_echo

	return 0

}

mod_config_cinnamon_wallpaper () {

	util_error_echo
	util_error_echo "gsettings set org.cinnamon.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'"
	gsettings set org.cinnamon.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'


	util_error_echo
	util_error_echo "gsettings set org.cinnamon.desktop.background picture-options 'zoom'"
	gsettings set org.cinnamon.desktop.background picture-options 'zoom'


	return 0

}

mod_config_cinnamon_color_scheme () {

	return 0

}

mod_config_cinnamon_wm_theme () {

	util_error_echo
	util_error_echo "gsettings set org.cinnamon.theme name 'Gruvbox'"
	gsettings set org.cinnamon.theme name 'Gruvbox'


	util_error_echo
	util_error_echo "gsettings set org.cinnamon.desktop.wm.preferences theme 'Gruvbox'"
	gsettings set org.cinnamon.desktop.wm.preferences theme 'Gruvbox'

	return 0

}

mod_config_cinnamon_gtk_theme () {

	util_error_echo
	util_error_echo "gsettings set org.cinnamon.desktop.interface gtk-theme 'Gruvbox'"
	gsettings set org.cinnamon.desktop.interface gtk-theme 'Gruvbox'

	return 0

}

mod_config_cinnamon_icon_theme () {

	util_error_echo
	util_error_echo "gsettings set org.cinnamon.desktop.interface icon-theme 'Gruvbox-Dark'"
	gsettings set org.cinnamon.desktop.interface icon-theme 'Gruvbox-Dark'

	return 0

}

mod_config_cinnamon_cursor_theme () {

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'"
	gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface cursor-size 24"
	gsettings set org.cinnamon.desktop.interface cursor-size 24

	return 0

}


mod_config_cinnamon_fallback_theme () {

	util_error_echo
	util_error_echo "gsettings set org.cinnamon.desktop.wm.preferences theme-backup 'Adwaita'"
	gsettings set org.cinnamon.desktop.wm.preferences theme-backup 'Adwaita'

	util_error_echo
	util_error_echo "gsettings set org.cinnamon.desktop.interface gtk-theme-backup 'Adwaita'"
	gsettings set org.cinnamon.desktop.interface gtk-theme-backup 'Adwaita'

	util_error_echo
	util_error_echo "gsettings set org.cinnamon.desktop.interface icon-theme-backup 'gnome'"
	gsettings set org.cinnamon.desktop.interface icon-theme-backup 'gnome'

	return 0

}

##
### Tail: cinnamon
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	config_cinnamon

	return 0

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
