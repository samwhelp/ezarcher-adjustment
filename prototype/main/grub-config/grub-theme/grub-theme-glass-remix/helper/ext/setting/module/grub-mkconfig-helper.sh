

################################################################################
### Head: Setting / Module / Grub-Mkconfig-Helper / Variable
##

grub_mkconfig_helper_var_init () {


	THE_SOURCE_GRUB_MKCONFIG_HELPER_DIR_PATH="${THE_SOURCE_OVERLAY_DIR_PATH}/etc/grub.d"
	THE_TARGET_GRUB_MKCONFIG_HELPER_DIR_PATH="/etc/grub.d"


	THE_GRUB_THEME_MKCONFIG_HELPER_FILE_NAME="05_debian_theme"

	THE_SOURCE_GRUB_THEME_MKCONFIG_HELPER_FILE_PATH="${THE_SOURCE_GRUB_MKCONFIG_HELPER_DIR_PATH}/${THE_GRUB_THEME_MKCONFIG_HELPER_FILE_NAME}"
	THE_TARGET_GRUB_THEME_MKCONFIG_HELPER_FILE_PATH="${THE_TARGET_GRUB_MKCONFIG_HELPER_DIR_PATH}/${THE_GRUB_THEME_MKCONFIG_HELPER_FILE_NAME}"




	return 0

}

grub_mkconfig_helper_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: grub_mkconfig_helper_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Grub-Mkconfig-Helper / Config"
	util_debug_echo "##"


	util_debug_echo
	util_debug_echo "THE_SOURCE_GRUB_MKCONFIG_HELPER_DIR_PATH=${THE_SOURCE_GRUB_MKCONFIG_HELPER_DIR_PATH}"
	util_debug_echo "THE_TARGET_GRUB_MKCONFIG_HELPER_DIR_PATH=${THE_TARGET_GRUB_MKCONFIG_HELPER_DIR_PATH}"

	util_debug_echo
	util_debug_echo "THE_GRUB_THEME_MKCONFIG_HELPER_FILE_NAME=${THE_GRUB_THEME_MKCONFIG_HELPER_FILE_NAME}"

	util_debug_echo
	util_debug_echo "THE_SOURCE_GRUB_THEME_MKCONFIG_HELPER_FILE_PATH=${THE_SOURCE_GRUB_THEME_MKCONFIG_HELPER_FILE_PATH}"
	util_debug_echo "THE_TARGET_GRUB_THEME_MKCONFIG_HELPER_FILE_PATH=${THE_TARGET_GRUB_THEME_MKCONFIG_HELPER_FILE_PATH}"


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: grub_mkconfig_helper_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

grub_mkconfig_helper_var_init
grub_mkconfig_helper_var_dump

##
### Tail: Setting / Module / Grub-Mkconfig-Helper / Variable
################################################################################


################################################################################
### Head: Setting / Module / Grub-Mkconfig-Helper / Portal
##

grub_mkconfig_helper_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## grub_mkconfig_helper_config_install"
	util_error_echo "##"
	util_error_echo




	mod_grub_mkconfig_helper_config_install

	#grub_system_config_recreate




	util_error_echo


	return 0

}


grub_mkconfig_helper_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## grub_mkconfig_helper_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	#mod_grub_mkconfig_helper_asset_install




	#util_error_echo


	return 0

}


grub_mkconfig_helper_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## grub_mkconfig_helper_prototype_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


##
### Tail: Setting / Module / Grub-Mkconfig-Helper / Portal
################################################################################




################################################################################
### Head: Grub-Mkconfig-Helper / Config
##

mod_grub_mkconfig_helper_config_install () {


	util_error_echo
	util_error_echo sudo install -dm755 "${THE_TARGET_GRUB_MKCONFIG_HELPER_DIR_PATH}"
	sudo install -dm755 "${THE_TARGET_GRUB_MKCONFIG_HELPER_DIR_PATH}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${THE_SOURCE_GRUB_THEME_MKCONFIG_HELPER_FILE_PATH}" "${THE_TARGET_GRUB_THEME_MKCONFIG_HELPER_FILE_PATH}"
	sudo install -Dm755 "${THE_SOURCE_GRUB_THEME_MKCONFIG_HELPER_FILE_PATH}" "${THE_TARGET_GRUB_THEME_MKCONFIG_HELPER_FILE_PATH}"


	return 0

}

##
### Tail: Grub-Mkconfig-Helper / Config
################################################################################


################################################################################
### Head: Grub-Mkconfig-Helper / Asset
##

mod_grub_mkconfig_helper_asset_install () {


	return 0

}

##
### Tail: Grub-Mkconfig-Helper / Asset
################################################################################
