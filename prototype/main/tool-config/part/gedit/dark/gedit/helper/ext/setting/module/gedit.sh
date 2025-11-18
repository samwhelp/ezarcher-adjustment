

################################################################################
### Head: Setting / Module / Gedit / Variable
##

gedit_var_init () {

	THE_GEDIT_GSCHEMA_OVERRIDE_FILE_NAME="50_gedit.gschema.override"

	THE_GEDIT_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_GEDIT_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_GEDIT_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_GEDIT_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

gedit_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: gedit_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Gedit / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GEDIT_GSCHEMA_OVERRIDE_FILE_NAME=${THE_GEDIT_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_GEDIT_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GEDIT_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_GEDIT_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GEDIT_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: gedit_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

gedit_var_init
gedit_var_dump

##
### Tail: Setting / Module / Gedit / Variable
################################################################################


################################################################################
### Head: Setting / Module / Gedit / Portal
##

gedit_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gedit_config_install"
	util_error_echo "##"
	util_error_echo




	gedit_settings_set_all

	gedit_config_install_by_dir


	return 0

}


gedit_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gedit_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


gedit_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gedit_prototype_install"
	util_error_echo "##"
	util_error_echo




	gedit_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}

##
### Tail: Setting / Module / Gedit / Portal
################################################################################


################################################################################
### Head: Setting / Module / Gedit / Settings
##

gedit_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor auto-indent true"
	gsettings set org.gnome.gedit.preferences.editor auto-indent true


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor auto-save false"
	gsettings set org.gnome.gedit.preferences.editor auto-save false


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor auto-save-interval 10"
	gsettings set org.gnome.gedit.preferences.editor auto-save-interval 10


	#util_error_echo
	#util_error_echo "gsettings set org.gnome.gedit.preferences.editor background-pattern 'none'"
	#gsettings set org.gnome.gedit.preferences.editor background-pattern 'none'


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor bracket-matching true"
	gsettings set org.gnome.gedit.preferences.editor bracket-matching true


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor create-backup-copy false"
	gsettings set org.gnome.gedit.preferences.editor create-backup-copy false


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor display-line-numbers true"
	gsettings set org.gnome.gedit.preferences.editor display-line-numbers true


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor display-right-margin true"
	gsettings set org.gnome.gedit.preferences.editor display-right-margin true


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor editor-font 'Monospace 14'"
	gsettings set org.gnome.gedit.preferences.editor editor-font 'Monospace 14'


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor ensure-trailing-newline true"
	gsettings set org.gnome.gedit.preferences.editor ensure-trailing-newline true


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor highlight-current-line true"
	gsettings set org.gnome.gedit.preferences.editor highlight-current-line true


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor insert-spaces false"
	gsettings set org.gnome.gedit.preferences.editor insert-spaces false


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor max-undo-actions 2000"
	gsettings set org.gnome.gedit.preferences.editor max-undo-actions 2000


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor restore-cursor-position true"
	gsettings set org.gnome.gedit.preferences.editor restore-cursor-position true


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor right-margin-position 80"
	gsettings set org.gnome.gedit.preferences.editor right-margin-position 80


	#util_error_echo
	#util_error_echo "gsettings set org.gnome.gedit.preferences.editor scheme 'oblivion'"
	#gsettings set org.gnome.gedit.preferences.editor scheme 'oblivion'

	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor style-scheme-for-dark-theme-variant 'oblivion'"
	gsettings set org.gnome.gedit.preferences.editor style-scheme-for-dark-theme-variant 'oblivion'

	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor style-scheme-for-light-theme-variant 'solarized-light'"
	gsettings set org.gnome.gedit.preferences.editor style-scheme-for-light-theme-variant 'solarized-light'




	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor search-highlighting true"
	gsettings set org.gnome.gedit.preferences.editor search-highlighting true


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor smart-home-end 'after'"
	gsettings set org.gnome.gedit.preferences.editor smart-home-end 'after'


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor syntax-highlighting true"
	gsettings set org.gnome.gedit.preferences.editor syntax-highlighting true


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor tabs-size 4"
	gsettings set org.gnome.gedit.preferences.editor tabs-size 4


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor use-default-font false"
	gsettings set org.gnome.gedit.preferences.editor use-default-font false


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor wrap-last-split-mode 'word'"
	gsettings set org.gnome.gedit.preferences.editor wrap-last-split-mode 'word'


	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.editor wrap-mode 'word'"
	gsettings set org.gnome.gedit.preferences.editor wrap-mode 'word'








	util_error_echo
	util_error_echo "gsettings set org.gnome.gedit.preferences.ui theme-variant 'dark'"
	gsettings set org.gnome.gedit.preferences.ui theme-variant 'dark'




	return 0

}

##
### Tail: Setting / Module / Gedit / Settings
################################################################################


################################################################################
### Head: Setting / Module / Gedit / Gschema
##

gedit_gschema_put_all () {

	local source_gschema_override_file_path="${THE_GEDIT_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_GEDIT_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"




	return 0

}

##
### Tail: Setting / Module / Gedit / Gschema
################################################################################


################################################################################
### Head: Setting / Module / Gedit / Config File
##

gedit_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"




	return 0

}


##
### Tail: Setting / Module / Gedit / Config File
################################################################################
