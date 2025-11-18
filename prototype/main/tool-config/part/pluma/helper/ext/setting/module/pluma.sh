

################################################################################
### Head: Setting / Module / Pluma / Variable
##

pluma_var_init () {

	THE_PLUMA_GSCHEMA_OVERRIDE_FILE_NAME="50_pluma.gschema.override"

	THE_PLUMA_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_PLUMA_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_PLUMA_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_PLUMA_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

pluma_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: pluma_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Pluma / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_PLUMA_GSCHEMA_OVERRIDE_FILE_NAME=${THE_PLUMA_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_PLUMA_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_PLUMA_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_PLUMA_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_PLUMA_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: pluma_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

pluma_var_init
pluma_var_dump

##
### Tail: Setting / Module / Pluma / Variable
################################################################################


################################################################################
### Head: Setting / Module / Pluma / Portal
##

pluma_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## pluma_config_install"
	util_error_echo "##"
	util_error_echo




	pluma_settings_set_all

	pluma_config_install_by_dir


	return 0

}


pluma_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## pluma_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


pluma_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## pluma_prototype_install"
	util_error_echo "##"
	util_error_echo




	pluma_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}

##
### Tail: Setting / Module / Pluma / Portal
################################################################################


################################################################################
### Head: Setting / Module / Pluma / Settings
##

pluma_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma auto-indent true"
	gsettings set org.mate.pluma auto-indent true


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma insert-spaces false"
	gsettings set org.mate.pluma insert-spaces false


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma tabs-size 4"
	gsettings set org.mate.pluma tabs-size 4


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma bracket-matching true"
	gsettings set org.mate.pluma bracket-matching true


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma highlight-current-line true"
	gsettings set org.mate.pluma highlight-current-line true


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma display-line-numbers true"
	gsettings set org.mate.pluma display-line-numbers true


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma display-overview-map true"
	gsettings set org.mate.pluma display-overview-map true


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma display-right-margin true"
	gsettings set org.mate.pluma display-right-margin true


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma background-pattern 'none'"
	gsettings set org.mate.pluma background-pattern 'none'


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma side-pane-visible true"
	gsettings set org.mate.pluma side-pane-visible true


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma statusbar-visible true"
	gsettings set org.mate.pluma statusbar-visible true


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma color-scheme 'oblivion'"
	gsettings set org.mate.pluma color-scheme 'oblivion'


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma use-default-font false"
	gsettings set org.mate.pluma use-default-font false


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma editor-font 'Monospace 14'"
	gsettings set org.mate.pluma editor-font 'Monospace 14'


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma right-margin-position 80"
	gsettings set org.mate.pluma right-margin-position 80


	util_error_echo
	util_error_echo "gsettings set enable-space-drawer-newline true"
	gsettings set org.mate.pluma enable-space-drawer-newline true


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma enable-space-drawer-space 'show-all'"
	gsettings set org.mate.pluma enable-space-drawer-space 'show-all'


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma enable-space-drawer-tab 'show-trailing'"
	gsettings set org.mate.pluma enable-space-drawer-tab 'show-trailing'


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma shown-in-menu-encodings \"['UTF-8', 'ISO-8859-15', 'UTF-16', 'BIG5', 'GB2312']\""
	gsettings set org.mate.pluma shown-in-menu-encodings "['UTF-8', 'ISO-8859-15', 'UTF-16', 'BIG5', 'GB2312']"


	util_error_echo
	util_error_echo "gsettings set org.mate.pluma active-plugins \"['filebrowser', 'spell', 'modelines', 'externaltools', 'docinfo', 'trailsave', 'time']\""
	gsettings set org.mate.pluma active-plugins "['filebrowser', 'spell', 'modelines', 'externaltools', 'docinfo', 'trailsave', 'time']"








	return 0

}

##
### Tail: Setting / Module / Pluma / Settings
################################################################################


################################################################################
### Head: Setting / Module / Pluma / Gschema
##

pluma_gschema_put_all () {

	local source_gschema_override_file_path="${THE_PLUMA_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_PLUMA_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"




	return 0

}

##
### Tail: Setting / Module / Pluma / Gschema
################################################################################


################################################################################
### Head: Setting / Module / Pluma / Config File
##

pluma_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"




	return 0

}


##
### Tail: Setting / Module / Pluma / Config File
################################################################################
