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
### Head: gnome-shell
##

config_gnome_shell () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## Config: gnome-shell"
	util_error_echo "##"
	util_error_echo

	#mod_config_gnome_shell_wallpaper

	mod_config_gnome_shell_color_scheme

	mod_config_gnome_shell_wm_theme

	mod_config_gnome_shell_gtk_theme

	mod_config_gnome_shell_icon_theme

	mod_config_gnome_shell_cursor_theme



	util_error_echo

	return 0

}

mod_config_gnome_shell_wallpaper () {


	##
	## * https://github.com/samwhelp/note-about-fzf/blob/gh-pages/_demo/project/wallpaper-select/wallpaper-select-gnome/wallpaper-select-gnome#L552-L560
	## * https://github.com/samwhelp/note-about-wallpaper/blob/gh-pages/_demo/project/opset-wallpaper/opset-wallpaper-gnome/opset-wallpaper-gnome#L20-L29
	## * https://github.com/samwhelp/note-about-wallpaper/blob/gh-pages/_demo/project/opset-wallpaper/opset-wallpaper-gnome/opset-screensaver-background-gnome#L20-L29
	##

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'"
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/default.jpg'"
	gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/default.jpg'

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/default-login.jpg'"
	gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/default-login.jpg'

	return 0

}

mod_config_gnome_shell_color_scheme () {

	#gsettings set org.gnome.desktop.interface color-scheme 'default'
	#gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'"
	gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

	return 0

}

mod_config_gnome_shell_wm_theme () {

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences theme '${THE_WM_THEME_NAME}'"
	gsettings set org.gnome.desktop.wm.preferences theme "'${THE_WM_THEME_NAME}'"



	##
	## Enable: GNOME Shell Extension / [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
	##

	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.user-theme name '${THE_WM_THEME_NAME}'"
	gsettings set org.gnome.shell.extensions.user-theme name "'${THE_WM_THEME_NAME}'"

	#util_error_echo
	#util_error_echo "gsettings set org.gnome.shell.extensions.user-theme name 'Default'"
	#gsettings set org.gnome.shell.extensions.user-theme name 'Default'
	

	return 0

}

mod_config_gnome_shell_gtk_theme () {

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface gtk-theme '${THE_GTK_THEME_NAME}'"
	gsettings set org.gnome.desktop.interface gtk-theme "'${THE_GTK_THEME_NAME}'"

	return 0

}

mod_config_gnome_shell_icon_theme () {

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface icon-theme '${THE_ICON_THEME_NAME}'"
	gsettings set org.gnome.desktop.interface icon-theme "'${THE_ICON_THEME_NAME}'"

	return 0

}

mod_config_gnome_shell_cursor_theme () {

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface cursor-theme '${THE_CURSOR_THEME_NAME}'"
	gsettings set org.gnome.desktop.interface cursor-theme "'${THE_CURSOR_THEME_NAME}'"

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface cursor-size ${THE_CURSOR_SIZE}"
	gsettings set org.gnome.desktop.interface cursor-size "${THE_CURSOR_SIZE}"

	return 0

}


##
### Tail: gnome-shell
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	config_gnome_shell

	return 0

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
