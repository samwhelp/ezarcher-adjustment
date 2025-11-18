

################################################################################
### Head: Setting / Module / Gnome-Terminal / Variable
##

gnome_terminal_var_init () {

	THE_GNOME_TERMINAL_DCONF_DB_FILE_NAME="50_gnome-terminal.conf"

	THE_GNOME_TERMINAL_SOURCE_DCONF_DB_FILE_PATH="${THE_SOURCE_DCONFDB_DIR_PATH}/${THE_GNOME_TERMINAL_DCONF_DB_FILE_NAME}"
	THE_GNOME_TERMINAL_TARGET_DCONF_DB_FILE_PATH="${THE_TARGET_DCONFDB_DIR_PATH}/${THE_GNOME_TERMINAL_DCONF_DB_FILE_NAME}"


	return 0

}

gnome_terminal_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: gnome_terminal_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Gnome-Terminal / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GNOME_TERMINAL_DCONF_DB_FILE_NAME=${THE_GNOME_TERMINAL_DCONF_DB_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_GNOME_TERMINAL_SOURCE_DCONF_DB_FILE_PATH=${THE_GNOME_TERMINAL_SOURCE_DCONF_DB_FILE_PATH}"
	util_debug_echo "THE_GNOME_TERMINAL_TARGET_DCONF_DB_FILE_PATH=${THE_GNOME_TERMINAL_TARGET_DCONF_DB_FILE_PATH}"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: gnome_terminal_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

gnome_terminal_var_init
gnome_terminal_var_dump

##
### Tail: Setting / Module / Gnome-Terminal / Variable
################################################################################


################################################################################
### Head: Setting / Module / Gnome-Terminal / Portal
##

gnome_terminal_config_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_terminal_config_install"
	util_error_echo "##"
	util_error_echo




	gnome_terminal_settings_set_all

	return 0
}


gnome_terminal_asset_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_terminal_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


gnome_terminal_prototype_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_terminal_prototype_install"
	util_error_echo "##"
	util_error_echo




	sys_dconf_init

	gnome_terminal_dconfdb_put_all

	sys_dconf_update

	return 0
}


##
### Tail: Setting / Module / Gnome-Terminal / Portal
################################################################################


################################################################################
### Head: Setting / Module / Gnome-Terminal / Settings
##

gnome_terminal_settings_set_all () {

	gnome_terminal_config_for_preference

	gnome_terminal_config_for_keybind

	gnome_terminal_config_for_profile

	return 0

}


gnome_terminal_config_for_preference () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_terminal_config_for_preference"
	util_error_echo "##"




	util_error_echo
	util_error_echo "gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false"
	gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false




	return 0

}

gnome_terminal_config_for_keybind () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_terminal_config_for_keybind"
	util_error_echo "##"


	##
	## Original
	##

	#gsettings set "org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/" '<Control>0'
	#gsettings set "org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/" zoom-out '<Control>minus'
	#gsettings set "org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/" zoom-in '<Control>plus'



	##
	## Adjustment
	##

	local path="org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/"
	util_error_echo
	util_error_echo "##"
	util_error_echo "## path=${path}"
	util_error_echo "##"

	util_error_echo
	util_error_echo "gsettings set \"${path}\" zoom-normal '<Control>0'"
	gsettings set "${path}" zoom-normal '<Control>0'

	util_error_echo
	util_error_echo "gsettings set \"${path}\" zoom-out '<Control>minus'"
	gsettings set "${path}" zoom-out '<Control>minus'

	util_error_echo
	util_error_echo "gsettings set \"${path}\" zoom-in '<Control>equal'"
	gsettings set "${path}" zoom-in '<Control>equal'




	return 0
}

gnome_terminal_config_for_profile () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_terminal_config_for_profile"
	util_error_echo "##"




	##
	## https://wiki.gnome.org/Apps/Terminal/FAQ
	## $ dpkg -L gnome-terminal | grep gschema
	## /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml
	## $ view /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml
	##


	local profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
	profile=${profile:1:-1} # remove leading and trailing single quotes
	util_error_echo "##"
	util_error_echo "## profile=${profile}"
	util_error_echo "##"


	local path="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/"
	util_error_echo
	util_error_echo "##"
	util_error_echo "## path=${path}"
	util_error_echo "##"


	util_error_echo
	util_error_echo "gsettings set \"${path}\" scrollbar-policy 'never'"
	gsettings set "${path}" scrollbar-policy 'never'

	util_error_echo
	util_error_echo "gsettings set \"${path}\" use-theme-colors false"
	gsettings set "${path}" use-theme-colors false

	#util_error_echo
	#util_error_echo "gsettings set \"${path}\" use-theme-transparency false"
	#gsettings set "${path}" use-theme-transparency false

	#util_error_echo
	#util_error_echo "gsettings set \"${path}\" use-transparent-background true"
	#gsettings set "${path}" use-transparent-background true

	#util_error_echo
	#util_error_echo "gsettings set \"${path}\" background-transparency-percent 15"
	#gsettings set "${path}" background-transparency-percent 15


	#util_error_echo
	#util_error_echo "gsettings set \"${path}\" foreground-color 'rgb(255,255,255)'"
	#gsettings set "${path}" foreground-color 'rgb(255,255,255)'

	util_error_echo
	util_error_echo "gsettings set \"${path}\" foreground-color 'rgb(170,170,170)'"
	gsettings set "${path}" foreground-color 'rgb(170,170,170)'


	util_error_echo
	util_error_echo "gsettings set \"${path}\" foreground-color 'rgb(0,0,0)'"
	gsettings set "${path}" background-color 'rgb(0,0,0)'


	#util_error_echo
	#util_error_echo "gsettings set \"${path}\" use-theme-transparency false"
	#gsettings set "${path}" use-theme-transparency false

	#util_error_echo
	#util_error_echo "gsettings set \"${path}\" use-transparent-background true"
	#gsettings set "${path}" use-transparent-background true

	#util_error_echo
	#util_error_echo "gsettings set \"${path}\" background-transparency-percent 15"
	#gsettings set "${path}" background-transparency-percent 15

	util_error_echo
	util_error_echo "gsettings set \"${path}\" visible-name 'Default'"
	gsettings set "${path}" visible-name 'Default'

	util_error_echo
	util_error_echo "gsettings set \"${path}\" use-system-font false"
	gsettings set "${path}" use-system-font false

	util_error_echo
	util_error_echo "gsettings set \"${path}\" font 'Monospace 14'"
	gsettings set "${path}" font 'Monospace 14'

	util_error_echo
	util_error_echo "gsettings set \"${path}\" scrollback-unlimited true"
	gsettings set "${path}" scrollback-unlimited true




	util_error_echo

	return 0

}

##
### Tail: Setting / Module / Gnome-Terminal / Settings
################################################################################


################################################################################
### Head: Setting / Module / Gnome-Terminal / Dconf
##

gnome_terminal_dconfdb_put_all () {

	gnome_terminal_dconfdb_put_main

	return 0

}


gnome_terminal_dconfdb_put_main () {

	local source_dconfdb_file_path="${THE_GNOME_TERMINAL_SOURCE_DCONF_DB_FILE_PATH}"

	local target_dconfdb_file_path="${THE_GNOME_TERMINAL_TARGET_DCONF_DB_FILE_PATH}"

	#util_error_echo "${source_dconfdb_file_path}"

	#util_error_echo "${target_dconfdb_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	util_error_echo


	return 0

}

##
### Tail: Setting / Module / Gnome-Terminal / Dconf
################################################################################
