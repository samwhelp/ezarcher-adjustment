

################################################################################
### Head: Setting / Module / Xed / Variable
##

xed_var_init () {

	THE_XED_GSCHEMA_OVERRIDE_FILE_NAME="50_xed.gschema.override"

	THE_XED_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_XED_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_XED_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_XED_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

xed_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: xed_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Xed / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_XED_GSCHEMA_OVERRIDE_FILE_NAME=${THE_XED_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_XED_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_XED_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_XED_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_XED_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: xed_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

xed_var_init
xed_var_dump

##
### Tail: Setting / Module / Xed / Variable
################################################################################


################################################################################
### Head: Setting / Module / Xed / Portal
##

xed_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## xed_config_install"
	util_error_echo "##"
	util_error_echo




	xed_settings_set_all

	xed_config_install_by_dir


	return 0

}


xed_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## xed_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


xed_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## xed_prototype_install"
	util_error_echo "##"
	util_error_echo




	xed_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}

##
### Tail: Setting / Module / Xed / Portal
################################################################################


################################################################################
### Head: Setting / Module / Xed / Settings
##

xed_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.x.editor.preferences.editor prefer-dark-theme true"
	gsettings set org.x.editor.preferences.editor prefer-dark-theme true





	return 0

}

##
### Tail: Setting / Module / Xed / Settings
################################################################################


################################################################################
### Head: Setting / Module / Xed / Gschema
##

xed_gschema_put_all () {

	local source_gschema_override_file_path="${THE_XED_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_XED_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"




	return 0

}

##
### Tail: Setting / Module / Xed / Gschema
################################################################################


################################################################################
### Head: Setting / Module / Xed / Config File
##

xed_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	#echo
	#echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	#cp -rf "./asset/overlay/etc/skel/." "${HOME}"




	return 0

}


##
### Tail: Setting / Module / Xed / Config File
################################################################################
