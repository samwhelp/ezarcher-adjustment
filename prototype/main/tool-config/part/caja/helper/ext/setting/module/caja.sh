

################################################################################
### Head: Setting / Module / Caja / Variable
##

caja_var_init () {

	THE_CAJA_GSCHEMA_OVERRIDE_FILE_NAME="50_caja.gschema.override"

	THE_CAJA_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_CAJA_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_CAJA_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_CAJA_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

caja_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: caja_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Caja / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_CAJA_GSCHEMA_OVERRIDE_FILE_NAME=${THE_CAJA_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_CAJA_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CAJA_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_CAJA_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_CAJA_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: caja_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

caja_var_init
caja_var_dump

##
### Tail: Setting / Module / Caja / Variable
################################################################################


################################################################################
### Head: Setting / Module / Caja / Portal
##

caja_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## caja_config_install"
	util_error_echo "##"
	util_error_echo




	caja_settings_set_all


	return 0

}


caja_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## caja_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


caja_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## caja_prototype_install"
	util_error_echo "##"
	util_error_echo




	caja_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Caja / Portal
################################################################################


################################################################################
### Head: Setting / Module / Caja / Settings
##

caja_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.mate.caja.preferences show-hidden-files true"
	gsettings set org.mate.caja.preferences show-hidden-files true


	util_error_echo
	util_error_echo "gsettings set org.mate.caja.preferences default-folder-viewer 'list-view'"
	gsettings set org.mate.caja.preferences default-folder-viewer 'list-view'







	util_error_echo
	util_error_echo "gsettings set org.mate.caja.list-view default-column-order \"['name', 'size', 'type', 'date_modified', 'date_accessed', 'date_created', 'extension', 'group', 'where', 'mime_type', 'octal_permissions', 'owner', 'permissions', 'size_on_disk']\""
	gsettings set org.mate.caja.list-view default-column-order "['name', 'size', 'type', 'date_modified', 'date_accessed', 'date_created', 'extension', 'group', 'where', 'mime_type', 'octal_permissions', 'owner', 'permissions', 'size_on_disk']"


	util_error_echo
	util_error_echo "gsettings set org.mate.caja.list-view default-visible-columns \"['name', 'size', 'type', 'date_modified']\""
	gsettings set org.mate.caja.list-view default-visible-columns "['name', 'size', 'type', 'date_modified']"








	#util_error_echo
	#util_error_echo "gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true"
	#gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true




	return 0

}

##
### Tail: Setting / Module / Caja / Settings
################################################################################


################################################################################
### Head: Setting / Module / Caja / Gschema
##

caja_gschema_put_all () {

	local source_gschema_override_file_path="${THE_CAJA_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_CAJA_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"


	return 0
}

##
### Tail: Setting / Module / Caja / Gschema
################################################################################
