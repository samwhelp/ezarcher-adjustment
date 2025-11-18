#!/usr/bin/env bash


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Remove
##

mod_remove () {

	mod_remove_bin_up
	mod_remove_bin_ctrl
	mod_remove_ext

	mod_remove_sys_ext

	mod_remove_sys_profile_default

	mod_remove_sys_profile_main

	mod_remove_sys_profile_nord_aurora
	mod_remove_sys_profile_nord_polar_night
	mod_remove_sys_profile_gruvbox

	##mod_remove_sys_cache_profile

	#mod_remove_style_dir
	mod_remove_share_style_profile_main

	mod_remove_check

}

mod_remove_bin_up () {

	echo "rm -f  $HOME/.config/openbox/openboxrc"
	rm -f "$HOME/.config/openbox/rc.xml"

	echo "rm -f  $HOME/.config/openbox/rc.xml"
	rm -f "$HOME/.config/openbox/menu.xml"

	echo "rm -f  $HOME/.config/openbox/autostart"
	rm -f "$HOME/.config/openbox/autostart"

	echo "rm -f $HOME/.config/openbox/bin/openbox-up"
	rm -f "$HOME/.config/openbox/bin/openbox-up"

	echo "rm -f $HOME/.config/openbox/bin/openbox-up-xsettings"
	rm -f "$HOME/.config/openbox/bin/openbox-up-xsettings"

	echo "rm -f $HOME/.config/openbox/bin/openbox-up-wallpaper"
	rm -f "$HOME/.config/openbox/bin/openbox-up-wallpaper"

	echo "rm -f $HOME/.config/openbox/bin/openbox-up-compositor"
	rm -f "$HOME/.config/openbox/bin/openbox-up-compositor"

	echo "rm -f $HOME/.config/openbox/bin/openbox-up-panel"
	rm -f "$HOME/.config/openbox/bin/openbox-up-panel"

	echo "rm -f $HOME/.config/openbox/bin/openbox-up-applet"
	rm -f "$HOME/.config/openbox/bin/openbox-up-applet"

}

mod_remove_bin_ctrl () {

	echo "rm -f $HOME/.config/openbox/bin/openbox-wallpaper-ctrl"
	rm -f "$HOME/.config/openbox/bin/openbox-wallpaper-ctrl"


	echo "rm -f $HOME/.config/openbox/bin/openbox-profile-ctrl"
	rm -f "$HOME/.config/openbox/bin/openbox-profile-ctrl"

}

mod_remove_ext () {
	echo "rm -f $HOME/.config/openbox/ext/base.sh"
	rm -f "$HOME/.config/openbox/ext/base.sh"

	echo "rm -f $HOME/.config/openbox/ext/init.sh"
	rm -f "$HOME/.config/openbox/ext/init.sh"

	echo "rm -f $HOME/.config/openbox/ext/util.sh"
	rm -f "$HOME/.config/openbox/ext/util.sh"

	echo "rm -f $HOME/.config/openbox/ext/openbox.sh"
	rm -f "$HOME/.config/openbox/ext/openbox.sh"
}

mod_remove_sys_ext () {
	echo "rm -f $HOME/.config/openbox/sys/ext/init.sh"
	rm -f "$HOME/.config/openbox/sys/ext/init.sh"

	echo "rm -f $HOME/.config/openbox/sys/ext/skel.sh"
	rm -f "$HOME/.config/openbox/sys/ext/skel.sh"

	echo "rm -f $HOME/.config/openbox/sys/ext/default.sh"
	rm -f "$HOME/.config/openbox/sys/ext/default.sh"

	echo "rm -f $HOME/.config/openbox/sys/ext/profile.sh"
	rm -f "$HOME/.config/openbox/sys/ext/profile.sh"

	echo "rm -f $HOME/.config/openbox/sys/ext/openbox.sh"
	rm -f "$HOME/.config/openbox/sys/ext/openbox.sh"
}

mod_remove_sys_profile_default () {
	echo "rm -f $HOME/.config/openbox/sys/profile/default/keybind.sh"
	rm -f "$HOME/.config/openbox/sys/profile/default/keybind.sh"

	echo "rm -f $HOME/.config/openbox/sys/profile/default/theme.sh"
	rm -f "$HOME/.config/openbox/sys/profile/default/theme.sh"

	echo "rm -f $HOME/.config/openbox/sys/profile/default/rule.sh"
	rm -f "$HOME/.config/openbox/sys/profile/default/rule.sh"
}


mod_remove_sys_profile_main () {

	echo "rm -f $HOME/.config/openbox/sys/profile/main/keybind.sh"
	rm -f "$HOME/.config/openbox/sys/profile/main/keybind.sh"

	echo "rm -f $HOME/.config/openbox/sys/profile/main/theme.sh"
	rm -f "$HOME/.config/openbox/sys/profile/main/theme.sh"

	echo "rm -f $HOME/.config/openbox/sys/profile/main/rule.sh"
	rm -f "$HOME/.config/openbox/sys/profile/main/rule.sh"
}


mod_remove_sys_profile_nord_aurora () {
	#echo "rm -f $HOME/.config/openbox/sys/profile/nord_aurora/keybind.sh"
	#rm -f "$HOME/.config/openbox/sys/profile/nord_aurora/keybind.sh"

	echo "rm -f $HOME/.config/openbox/sys/profile/nord_aurora/theme.sh"
	rm -f "$HOME/.config/openbox/sys/profile/nord_aurora/theme.sh"

	#echo "rm -f $HOME/.config/openbox/sys/profile/nord_aurora/rule.sh"
	#rm -f "$HOME/.config/openbox/sys/profile/nord_aurora/rule.sh"
}

mod_remove_sys_profile_nord_polar_night () {
	#echo "rm -f $HOME/.config/openbox/sys/profile/nord_polar_night/keybind.sh"
	#rm -f "$HOME/.config/openbox/sys/profile/nord_polar_night/keybind.sh"

	echo "rm -f $HOME/.config/openbox/sys/profile/nord_polar_night/theme.sh"
	rm -f "$HOME/.config/openbox/sys/profile/nord_polar_night/theme.sh"

	#echo "rm -f $HOME/.config/openbox/sys/profile/nord_polar_night/rule.sh"
	#rm -f "$HOME/.config/openbox/sys/profile/nord_polar_night/rule.sh"
}

mod_remove_sys_profile_gruvbox () {
	#echo "rm -f $HOME/.config/openbox/sys/profile/gruvbox/keybind.sh"
	#rm -f "$HOME/.config/openbox/sys/profile/gruvbox/keybind.sh"

	echo "rm -f $HOME/.config/openbox/sys/profile/gruvbox/theme.sh"
	rm -f "$HOME/.config/openbox/sys/profile/gruvbox/theme.sh"

	#echo "rm -f $HOME/.config/openbox/sys/profile/gruvbox/rule.sh"
	#rm -f "$HOME/.config/openbox/sys/profile/gruvbox/rule.sh"
}


mod_remove_sys_cache_profile () {

	echo "rm -f $HOME/.config/openbox/sys/cache/profile/keybind.conf"
	rm -f "$HOME/.config/openbox/sys/cache/profile/keybind.conf"

	echo "rm -f $HOME/.config/openbox/sys/cache/profile/theme.conf"
	rm -f "$HOME/.config/openbox/sys/cache/profile/theme.conf"

	echo "rm -f $HOME/.config/openbox/sys/cache/profile/rule.conf"
	rm -f "$HOME/.config/openbox/sys/cache/profile/rule.conf"

}

mod_remove_style_dir () {

	if [ -L "$HOME/.config/openbox/style" ]; then
		echo "rm $HOME/.config/openbox/style"
		rm "$HOME/.config/openbox/style"
		return
	fi

}

mod_remove_share_style_profile_main () {

	echo "rm -f $HOME/.config/openbox/share/style-profile/main/picom/picom.conf"
	rm -f "$HOME/.config/openbox/share/style-profile/main/picom/picom.conf"

	echo "rm -f $HOME/.config/openbox/share/style-profile/main/tint2/tint2rc"
	rm -f "$HOME/.config/openbox/share/style-profile/main/tint2/tint2rc"

	echo "rm -f $HOME/.config/openbox/share/style-profile/main/xsettingsd/xsettingsd.conf"
	rm -f "$HOME/.config/openbox/share/style-profile/main/xsettingsd/xsettingsd.conf"

}





mod_remove_check () {
	echo
	is_command_exist 'tree' && tree "$HOME/.config/openbox"
}

##
### Tail: Model / Remove
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	mod_remove "$@"
}

__main__ "$@"

##
### Tail: Main
################################################################################
