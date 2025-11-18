

################################################################################
### Head: Setting / Module / Grub-Theme / Variable
##

grub_theme_var_init () {


	THE_SOURCE_GRUB_CONFIG_OVERRIDE_DIR_PATH="${THE_SOURCE_OVERLAY_DIR_PATH}/etc/default/grub.d"
	THE_TARGET_GRUB_CONFIG_OVERRIDE_DIR_PATH="/etc/default/grub.d"


	THE_GRUB_THEME_CONFIG_OVERRIDE_FILE_NAME="theme.cfg"

	THE_SOURCE_GRUB_THEME_CONFIG_OVERRIDE_FILE_PATH="${THE_SOURCE_GRUB_CONFIG_OVERRIDE_DIR_PATH}/${THE_GRUB_THEME_CONFIG_OVERRIDE_FILE_NAME}"
	THE_TARGET_GRUB_THEME_CONFIG_OVERRIDE_FILE_PATH="${THE_TARGET_GRUB_CONFIG_OVERRIDE_DIR_PATH}/${THE_GRUB_THEME_CONFIG_OVERRIDE_FILE_NAME}"




	THE_DOWNLOAD_TMP_DIR_PATH="${THE_MASTER_TMP_DIR_PATH}"

	THE_SOURCE_GRUB_THEME_PACKAGE_FILE_URL="https://github.com/samwhelp/grub-theme-glass-remix/archive/refs/heads/main.tar.gz"
	THE_TARGET_GRUB_THEME_PACKAGE_FILE_PATH="${THE_DOWNLOAD_TMP_DIR_PATH}/grub-theme-glass-remix-main.tar.gz"


	THE_TARGET_GRUB_THEMES_DIR_PATH="/boot/grub/themes"

	THE_SOURCE_GRUB_THEME_PACKAGE_DIR_PATH="${THE_DOWNLOAD_TMP_DIR_PATH}/grub-theme-glass-remix-main"
	THE_TARGET_GRUB_THEME_PACKAGE_DIR_PATH="${THE_TARGET_GRUB_THEMES_DIR_PATH}/grub-theme-glass-remix"



	return 0

}

grub_theme_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: grub_theme_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Grub-Theme / Config"
	util_debug_echo "##"


	util_debug_echo
	util_debug_echo "THE_SOURCE_GRUB_CONFIG_OVERRIDE_DIR_PATH=${THE_SOURCE_GRUB_CONFIG_OVERRIDE_DIR_PATH}"
	util_debug_echo "THE_TARGET_GRUB_CONFIG_OVERRIDE_DIR_PATH=${THE_TARGET_GRUB_CONFIG_OVERRIDE_DIR_PATH}"

	util_debug_echo
	util_debug_echo "THE_GRUB_THEME_CONFIG_OVERRIDE_FILE_NAME=${THE_GRUB_THEME_CONFIG_OVERRIDE_FILE_NAME}"

	util_debug_echo
	util_debug_echo "THE_SOURCE_GRUB_THEME_CONFIG_OVERRIDE_FILE_PATH=${THE_SOURCE_GRUB_THEME_CONFIG_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_TARGET_GRUB_THEME_CONFIG_OVERRIDE_FILE_PATH=${THE_TARGET_GRUB_THEME_CONFIG_OVERRIDE_FILE_PATH}"


	util_debug_echo
	util_debug_echo "THE_DOWNLOAD_TMP_DIR_PATH=${THE_DOWNLOAD_TMP_DIR_PATH}"

	util_debug_echo
	util_debug_echo "THE_SOURCE_GRUB_THEME_PACKAGE_FILE_URL=${THE_SOURCE_GRUB_THEME_PACKAGE_FILE_URL}"
	util_debug_echo "THE_TARGET_GRUB_THEME_PACKAGE_FILE_PATH=${THE_TARGET_GRUB_THEME_PACKAGE_FILE_PATH}"


	util_debug_echo
	util_debug_echo "THE_TARGET_GRUB_THEMES_DIR_PATH=${THE_TARGET_GRUB_THEMES_DIR_PATH}"

	util_debug_echo
	util_debug_echo "THE_SOURCE_GRUB_THEME_PACKAGE_DIR_PATH=${THE_SOURCE_GRUB_THEME_PACKAGE_DIR_PATH}"
	util_debug_echo "THE_TARGET_GRUB_THEME_PACKAGE_DIR_PATH=${THE_TARGET_GRUB_THEME_PACKAGE_DIR_PATH}"


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: grub_theme_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

grub_theme_var_init
grub_theme_var_dump

##
### Tail: Setting / Module / Grub-Theme / Variable
################################################################################


################################################################################
### Head: Setting / Module / Grub-Theme / Portal
##

grub_theme_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## grub_theme_config_install"
	util_error_echo "##"
	util_error_echo




	mod_grub_theme_config_install

	grub_system_config_recreate




	util_error_echo


	return 0

}


grub_theme_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## grub_theme_asset_install"
	util_error_echo "##"
	util_error_echo




	mod_grub_theme_asset_install




	util_error_echo


	return 0

}


grub_theme_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## grub_theme_prototype_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


##
### Tail: Setting / Module / Grub-Theme / Portal
################################################################################




################################################################################
### Head: Grub-Theme / Config
##

mod_grub_theme_config_install () {


	util_error_echo
	util_error_echo sudo install -dm755 "${THE_TARGET_GRUB_CONFIG_OVERRIDE_DIR_PATH}"
	sudo install -dm755 "${THE_TARGET_GRUB_CONFIG_OVERRIDE_DIR_PATH}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${THE_SOURCE_GRUB_THEME_CONFIG_OVERRIDE_FILE_PATH}" "${THE_TARGET_GRUB_THEME_CONFIG_OVERRIDE_FILE_PATH}"
	sudo install -Dm644 "${THE_SOURCE_GRUB_THEME_CONFIG_OVERRIDE_FILE_PATH}" "${THE_TARGET_GRUB_THEME_CONFIG_OVERRIDE_FILE_PATH}"




	return 0

}

##
### Tail: Grub-Theme / Config
################################################################################


################################################################################
### Head: Grub-Theme / Asset
##

mod_grub_theme_asset_install () {


	##
	## Prepare Download Dir
	##

	util_error_echo
	util_error_echo install -dm755 "${THE_DOWNLOAD_TMP_DIR_PATH}"
	install -dm755 "${THE_DOWNLOAD_TMP_DIR_PATH}"


	##
	## Download
	##

	util_error_echo
	util_error_echo wget -c "${THE_SOURCE_GRUB_THEME_PACKAGE_FILE_URL}" -O "${THE_TARGET_GRUB_THEME_PACKAGE_FILE_PATH}"
	wget -c "${THE_SOURCE_GRUB_THEME_PACKAGE_FILE_URL}" -O "${THE_TARGET_GRUB_THEME_PACKAGE_FILE_PATH}"


	##
	## Extract
	##

	util_error_echo
	util_error_echo tar xf "${THE_TARGET_GRUB_THEME_PACKAGE_FILE_PATH}" -C "${THE_DOWNLOAD_TMP_DIR_PATH}"
	tar xf "${THE_TARGET_GRUB_THEME_PACKAGE_FILE_PATH}" -C "${THE_DOWNLOAD_TMP_DIR_PATH}"


	##
	## Prepare Install Dir
	##

	util_error_echo
	util_error_echo sudo install -dm755 "${THE_TARGET_GRUB_THEMES_DIR_PATH}"
	sudo install -dm755 "${THE_TARGET_GRUB_THEMES_DIR_PATH}"


	##
	## Install
	##

	util_error_echo
	util_error_echo sudo cp -rf "${THE_SOURCE_GRUB_THEME_PACKAGE_DIR_PATH}/." "${THE_TARGET_GRUB_THEME_PACKAGE_DIR_PATH}"
	sudo cp -rf "${THE_SOURCE_GRUB_THEME_PACKAGE_DIR_PATH}/." "${THE_TARGET_GRUB_THEME_PACKAGE_DIR_PATH}"


	return 0

}

##
### Tail: Grub-Theme / Asset
################################################################################
