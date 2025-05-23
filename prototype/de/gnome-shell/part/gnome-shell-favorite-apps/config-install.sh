#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_config_install () {

	echo
	echo "## Config: gnome-shell"
	echo

	gnome_shell_favorite_apps_config


	echo
}

##
### Tail: gnome-shell
################################################################################




################################################################################
### Head: gnome-shell / favorite-apps
##

gnome_shell_favorite_apps_config () {

	gnome_shell_favorite_apps_config_contain_firefox
	#gnome_shell_favorite_apps_config_contain_falkon

}

gnome_shell_favorite_apps_config_contain_firefox () {

	echo 'gsettings set org.gnome.shell favorite-apps "'"['pcmanfm-qt.desktop', 'sublime_text.desktop', 'firefox.desktop', 'sakura.desktop', 'org.gnome.Settings.desktop', 'com.mattjakeman.ExtensionManager.desktop', 'org.gnome.Extensions.desktop', 'toggle-show-desktop.xdotool.desktop']"'"'
	gsettings set org.gnome.shell favorite-apps "['pcmanfm-qt.desktop', 'sublime_text.desktop', 'firefox.desktop', 'sakura.desktop', 'org.gnome.Settings.desktop', 'com.mattjakeman.ExtensionManager.desktop', 'org.gnome.Extensions.desktop', 'toggle-show-desktop.xdotool.desktop']"

}


gnome_shell_favorite_apps_config_contain_firefox_snap () {

	echo 'gsettings set org.gnome.shell favorite-apps "'"['pcmanfm-qt.desktop', 'sublime_text.desktop', 'firefox_firefox.desktop', 'sakura.desktop', 'gnome-control-center.desktop']"'"'
	gsettings set org.gnome.shell favorite-apps "['pcmanfm-qt.desktop', 'sublime_text.desktop', 'firefox_firefox.desktop', 'sakura.desktop', 'gnome-control-center.desktop', 'toggle-show-desktop.xdotool.desktop']"

}


gnome_shell_favorite_apps_config_contain_falkon () {

	echo 'gsettings set org.gnome.shell favorite-apps "'"['pcmanfm-qt.desktop', 'sublime_text.desktop', 'org.kde.falkon.desktop', 'sakura.desktop', 'gnome-control-center.desktop']"'"'
	gsettings set org.gnome.shell favorite-apps "['pcmanfm-qt.desktop', 'sublime_text.desktop', 'org.kde.falkon.desktop', 'sakura.desktop', 'gnome-control-center.desktop', 'toggle-show-desktop.xdotool.desktop']"

}


gnome_shell_favorite_apps_config_contain_firefox_atom () {

	echo 'gsettings set org.gnome.shell favorite-apps "'"['pcmanfm-qt.desktop', 'atom.desktop', 'firefox_firefox.desktop', 'sakura.desktop', 'gnome-control-center.desktop']"'"'
	gsettings set org.gnome.shell favorite-apps "['pcmanfm-qt.desktop', 'atom.desktop', 'firefox_firefox.desktop', 'sakura.desktop', 'gnome-control-center.desktop', 'toggle-show-desktop.xdotool.desktop']"

}


gnome_shell_favorite_apps_config_contain_falkon_atom () {

	echo 'gsettings set org.gnome.shell favorite-apps "'"['pcmanfm-qt.desktop', 'atom.desktop', 'org.kde.falkon.desktop', 'sakura.desktop', 'gnome-control-center.desktop']"'"'
	gsettings set org.gnome.shell favorite-apps "['pcmanfm-qt.desktop', 'atom.desktop', 'org.kde.falkon.desktop', 'sakura.desktop', 'gnome-control-center.desktop', 'toggle-show-desktop.xdotool.desktop']"

}

##
### Tail: gnome-shell / favorite-apps
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	gnome_shell_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
