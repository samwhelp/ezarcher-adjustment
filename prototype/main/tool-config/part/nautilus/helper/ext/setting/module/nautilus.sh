

################################################################################
### Head: Setting / Module / Nautilus / Variable
##

nautilus_var_init () {

	THE_NAUTILUS_GSCHEMA_OVERRIDE_FILE_NAME="50_nautilus.gschema.override"

	THE_NAUTILUS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_NAUTILUS_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_NAUTILUS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_NAUTILUS_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

nautilus_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: nautilus_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Nautilus / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_NAUTILUS_GSCHEMA_OVERRIDE_FILE_NAME=${THE_NAUTILUS_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_NAUTILUS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_NAUTILUS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_NAUTILUS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_NAUTILUS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: nautilus_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

nautilus_var_init
nautilus_var_dump

##
### Tail: Setting / Module / Nautilus / Variable
################################################################################


################################################################################
### Head: Setting / Module / Nautilus / Portal
##

nautilus_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## nautilus_config_install"
	util_error_echo "##"
	util_error_echo




	nautilus_settings_set_all


	return 0

}


nautilus_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## nautilus_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


nautilus_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## nautilus_prototype_install"
	util_error_echo "##"
	util_error_echo




	nautilus_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Nautilus / Portal
################################################################################


################################################################################
### Head: Setting / Module / Nautilus / Settings
##

nautilus_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'"
	gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'








	util_error_echo
	util_error_echo "gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true"
	gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true




	return 0

}

##
### Tail: Setting / Module / Nautilus / Settings
################################################################################


################################################################################
### Head: Setting / Module / Nautilus / Gschema
##

nautilus_gschema_put_all () {

	local source_gschema_override_file_path="${THE_NAUTILUS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_NAUTILUS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"


	return 0
}

##
### Tail: Setting / Module / Nautilus / Gschema
################################################################################
