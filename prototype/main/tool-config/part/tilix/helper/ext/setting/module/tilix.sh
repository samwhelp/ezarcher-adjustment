

################################################################################
### Head: Setting / Module / Tilix / Variable
##

tilix_var_init () {

	THE_TILIX_DCONF_DB_FILE_NAME="50_tilix.conf"

	THE_TILIX_SOURCE_DCONF_DB_FILE_PATH="${THE_SOURCE_DCONFDB_DIR_PATH}/${THE_TILIX_DCONF_DB_FILE_NAME}"
	THE_TILIX_TARGET_DCONF_DB_FILE_PATH="${THE_TARGET_DCONFDB_DIR_PATH}/${THE_TILIX_DCONF_DB_FILE_NAME}"


	return 0

}

tilix_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: tilix_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Tilix / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_TILIX_DCONF_DB_FILE_NAME=${THE_TILIX_DCONF_DB_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_TILIX_SOURCE_DCONF_DB_FILE_PATH=${THE_TILIX_SOURCE_DCONF_DB_FILE_PATH}"
	util_debug_echo "THE_TILIX_TARGET_DCONF_DB_FILE_PATH=${THE_TILIX_TARGET_DCONF_DB_FILE_PATH}"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: tilix_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

tilix_var_init
tilix_var_dump

##
### Tail: Setting / Module / Tilix / Variable
################################################################################


################################################################################
### Head: Setting / Module / Tilix / Portal
##

tilix_config_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## tilix_config_install"
	util_error_echo "##"
	util_error_echo




	tilix_settings_set_all

	return 0
}


tilix_asset_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## tilix_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


tilix_prototype_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## tilix_prototype_install"
	util_error_echo "##"
	util_error_echo




	sys_dconf_init

	tilix_dconfdb_put_all

	sys_dconf_update

	return 0
}


##
### Tail: Setting / Module / Tilix / Portal
################################################################################


################################################################################
### Head: Setting / Module / Tilix / Settings
##

tilix_settings_set_all () {

	tilix_config_for_keybind

	tilix_config_for_profile

	return 0

}

tilix_config_for_keybind () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## tilix_config_for_keybind"
	util_error_echo "##"


	##
	## Original
	##

	#gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-normal '<Ctrl>0'
	#gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-out '<Ctrl>minus'
	#gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-in '<Ctrl>plus'


	##
	## Adjustment
	##

	util_error_echo
	util_error_echo "gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-normal '<Ctrl>0'"
	gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-normal '<Ctrl>0'

	util_error_echo
	util_error_echo "gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-out '<Ctrl>minus'"
	gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-out '<Ctrl>minus'

	util_error_echo
	util_error_echo "gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-in '<Ctrl>equal'"
	gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-in '<Ctrl>equal'




	return 0

}

tilix_config_for_profile () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## tilix_config_for_profile"
	util_error_echo "##"


	##
	## $ dpkg -L tilix | grep gschema
	## /usr/share/glib-2.0/schemas/com.gexperts.Tilix.gschema.xml
	## $ view /usr/share/glib-2.0/schemas/com.gexperts.Tilix.gschema.xml
	##
	local profile=$(gsettings get com.gexperts.Tilix.ProfilesList default)
	profile=${profile:1:-1} # remove leading and trailing single quotes
	util_error_echo
	util_error_echo "##"
	util_error_echo "## profile=${profile}"
	util_error_echo "##"

	local path="com.gexperts.Tilix.Profile:/com/gexperts/Tilix/profiles/${profile}/"
	util_error_echo
	util_error_echo "##"
	util_error_echo "## path=${path}"
	util_error_echo "##"


	#util_error_echo
	#util_error_echo "gsettings get \"${path}\" visible-name"
	#gsettings get "${path}" visible-name


	util_error_echo
	util_error_echo "gsettings set \"${path}\" visible-name 'Default'"
	gsettings set "${path}" visible-name 'Default'


	util_error_echo
	util_error_echo "gsettings set \"${path}\" show-scrollbar false"
	gsettings set "${path}" show-scrollbar false


	util_error_echo
	util_error_echo "gsettings set \"${path}\" background-transparency-percent 15"
	gsettings set "${path}" background-transparency-percent 15


	util_error_echo
	util_error_echo "gsettings set \"${path}\" dim-transparency-percent 5"
	gsettings set "${path}" dim-transparency-percent 5


	util_error_echo
	util_error_echo "gsettings set \"${path}\" use-system-font false"
	gsettings set "${path}" use-system-font false

	util_error_echo
	util_error_echo "gsettings set \"${path}\" font 'Monospace 14'"
	gsettings set "${path}" font 'Monospace 14'


	util_error_echo
	util_error_echo "gsettings set \"${path}\" background-color '#303030'"
	gsettings set "${path}" background-color '#303030'


	util_error_echo
	util_error_echo "gsettings set \"${path}\" foreground-color '#EFEFEF'"
	gsettings set "${path}" foreground-color '#EFEFEF'


	util_error_echo
	util_error_echo "gsettings set \"${path}\" cursor-background-color '#000000'"
	gsettings set "${path}" cursor-background-color '#000000'


	util_error_echo
	util_error_echo "gsettings set \"${path}\" cursor-foreground-color '#ffffff'"
	gsettings set "${path}" cursor-foreground-color '#ffffff'


	util_error_echo
	util_error_echo "gsettings set \"${path}\" highlight-background-color '#000000'"
	gsettings set "${path}" highlight-background-color '#000000'


	util_error_echo
	util_error_echo "gsettings set \"${path}\" highlight-foreground-color '#ffffff'"
	gsettings set "${path}" highlight-foreground-color '#ffffff'


	util_error_echo
	util_error_echo "gsettings set \"${path}\" palette \"['#000000', '#CC0000', '#4D9A05', '#C3A000', '#3464A3', '#754F7B', '#05979A', '#D3D6CF', '#545652', '#EF2828', '#89E234', '#FBE84F', '#729ECF', '#AC7EA8', '#34E2E2', '#EDEDEB']\""
	gsettings set "${path}" palette "['#000000', '#CC0000', '#4D9A05', '#C3A000', '#3464A3', '#754F7B', '#05979A', '#D3D6CF', '#545652', '#EF2828', '#89E234', '#FBE84F', '#729ECF', '#AC7EA8', '#34E2E2', '#EDEDEB']"




	return 0


	util_error_echo
	util_error_echo "gsettings list-recursively \"${path}\""
	gsettings list-recursively "${path}"


	return 0

}

##
### Tail: Setting / Module / Tilix / Settings
################################################################################


################################################################################
### Head: Setting / Module / Tilix / Dconf
##

tilix_dconfdb_put_all () {

	tilix_dconfdb_put_main

	return 0

}


tilix_dconfdb_put_main () {

	local source_dconfdb_file_path="${THE_TILIX_SOURCE_DCONF_DB_FILE_PATH}"

	local target_dconfdb_file_path="${THE_TILIX_TARGET_DCONF_DB_FILE_PATH}"

	#util_error_echo "${source_dconfdb_file_path}"

	#util_error_echo "${target_dconfdb_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	util_error_echo


	return 0

}

##
### Tail: Setting / Module / Tilix / Dconf
################################################################################
