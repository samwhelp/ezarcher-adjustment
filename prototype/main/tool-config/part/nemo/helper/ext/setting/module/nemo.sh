

################################################################################
### Head: Setting / Module / Nemo / Variable
##

nemo_var_init () {

	THE_NEMO_GSCHEMA_OVERRIDE_FILE_NAME="50_nemo.gschema.override"

	THE_NEMO_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_NEMO_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_NEMO_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_NEMO_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

nemo_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: nemo_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Nemo / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_NEMO_GSCHEMA_OVERRIDE_FILE_NAME=${THE_NEMO_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_NEMO_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_NEMO_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_NEMO_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_NEMO_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: nemo_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

nemo_var_init
nemo_var_dump

##
### Tail: Setting / Module / Nemo / Variable
################################################################################


################################################################################
### Head: Setting / Module / Nemo / Portal
##

nemo_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## nemo_config_install"
	util_error_echo "##"
	util_error_echo




	nemo_settings_set_all


	return 0

}


nemo_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## nemo_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


nemo_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## nemo_prototype_install"
	util_error_echo "##"
	util_error_echo




	nemo_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Nemo / Portal
################################################################################


################################################################################
### Head: Setting / Module / Nemo / Settings
##

nemo_settings_set_all () {




	util_error_echo
	util_error_echo "gsettings set org.nemo.preferences show-hidden-files true"
	gsettings set org.nemo.preferences show-hidden-files true


	util_error_echo
	util_error_echo "gsettings set org.nemo.preferences ignore-view-metadata true"
	gsettings set org.nemo.preferences ignore-view-metadata true


	util_error_echo
	util_error_echo "gsettings set org.nemo.preferences default-folder-viewer 'list-view'"
	gsettings set org.nemo.preferences default-folder-viewer 'list-view'


	util_error_echo
	util_error_echo "gsettings set org.nemo.desktop font 'Sans 12'"
	gsettings set org.nemo.desktop font 'Sans 12'








	return 0








	util_error_echo
	util_error_echo "gsettings set org.gtk.Settings.FileChooser show-hidden true"
	gsettings set org.gtk.Settings.FileChooser show-hidden true


	util_error_echo
	util_error_echo "gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true"
	gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true








	return 0

}

##
### Tail: Setting / Module / Nemo / Settings
################################################################################


################################################################################
### Head: Setting / Module / Nemo / Gschema
##

nemo_gschema_put_all () {

	local source_gschema_override_file_path="${THE_NEMO_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_NEMO_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"


	return 0
}

##
### Tail: Setting / Module / Nemo / Gschema
################################################################################
