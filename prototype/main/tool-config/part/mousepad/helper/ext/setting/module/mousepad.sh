

################################################################################
### Head: Setting / Module / Mousepad / Variable
##

mousepad_var_init () {

	THE_MOUSEPAD_GSCHEMA_OVERRIDE_FILE_NAME="50_mousepad.gschema.override"

	THE_MOUSEPAD_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_MOUSEPAD_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_MOUSEPAD_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_MOUSEPAD_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

mousepad_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: mousepad_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Mousepad / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_MOUSEPAD_GSCHEMA_OVERRIDE_FILE_NAME=${THE_MOUSEPAD_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_MOUSEPAD_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MOUSEPAD_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_MOUSEPAD_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MOUSEPAD_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: mousepad_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

mousepad_var_init
mousepad_var_dump

##
### Tail: Setting / Module / Mousepad / Variable
################################################################################


################################################################################
### Head: Setting / Module / Mousepad / Portal
##

mousepad_config_install () {

	util_error_echo "mousepad_config_install"

	mousepad_settings_set_all

	return 0
}


mousepad_asset_install () {

	#util_error_echo "mousepad_asset_install"

	util_error_echo "!!! Do Nothing !!!"

	return 0
}


mousepad_prototype_install () {

	#util_error_echo "mousepad_prototype_install"

	mousepad_gschema_put_all

	return 0
}


##
### Tail: Setting / Module / Mousepad / Portal
################################################################################


################################################################################
### Head: Setting / Module / Mousepad / Settings
##

mousepad_settings_set_all () {

	gsettings set org.xfce.mousepad.preferences.file add-last-end-of-line true
	gsettings set org.xfce.mousepad.preferences.file auto-reload false
	gsettings set org.xfce.mousepad.preferences.file autosave-timer 30
	gsettings set org.xfce.mousepad.preferences.file default-encoding 'UTF-8'
	gsettings set org.xfce.mousepad.preferences.file make-backup false
	gsettings set org.xfce.mousepad.preferences.file monitor-changes true
	gsettings set org.xfce.mousepad.preferences.file monitor-disabling-timer 500
	gsettings set org.xfce.mousepad.preferences.file session-restore 'after-a-crash'
	gsettings set org.xfce.mousepad.preferences.view auto-indent true
	gsettings set org.xfce.mousepad.preferences.view color-scheme 'oblivion'
	gsettings set org.xfce.mousepad.preferences.view font-name 'Monospace 16'
	gsettings set org.xfce.mousepad.preferences.view highlight-current-line true
	gsettings set org.xfce.mousepad.preferences.view indent-on-tab true
	gsettings set org.xfce.mousepad.preferences.view indent-width -1
	gsettings set org.xfce.mousepad.preferences.view insert-spaces false
	gsettings set org.xfce.mousepad.preferences.view match-braces true
	gsettings set org.xfce.mousepad.preferences.view right-margin-position 80
	gsettings set org.xfce.mousepad.preferences.view show-line-endings false
	gsettings set org.xfce.mousepad.preferences.view show-line-marks false
	gsettings set org.xfce.mousepad.preferences.view show-line-numbers true
	gsettings set org.xfce.mousepad.preferences.view show-right-margin true
	gsettings set org.xfce.mousepad.preferences.view.show-whitespace inside true
	gsettings set org.xfce.mousepad.preferences.view.show-whitespace leading true
	gsettings set org.xfce.mousepad.preferences.view.show-whitespace trailing true
	gsettings set org.xfce.mousepad.preferences.view show-whitespace true
	gsettings set org.xfce.mousepad.preferences.view smart-backspace false
	gsettings set org.xfce.mousepad.preferences.view smart-home-end 'after'
	gsettings set org.xfce.mousepad.preferences.view tab-width 4
	gsettings set org.xfce.mousepad.preferences.view use-default-monospace-font false
	gsettings set org.xfce.mousepad.preferences.view word-wrap true
	gsettings set org.xfce.mousepad.preferences.window always-show-tabs true
	gsettings set org.xfce.mousepad.preferences.window client-side-decorations false
	gsettings set org.xfce.mousepad.preferences.window cycle-tabs true
	gsettings set org.xfce.mousepad.preferences.window default-tab-sizes '2,3,4,8'
	gsettings set org.xfce.mousepad.preferences.window expand-tabs true
	gsettings set org.xfce.mousepad.preferences.window menubar-visible-in-fullscreen 'auto'
	gsettings set org.xfce.mousepad.preferences.window menubar-visible true
	gsettings set org.xfce.mousepad.preferences.window old-style-menu true
	gsettings set org.xfce.mousepad.preferences.window opening-mode 'tab'
	gsettings set org.xfce.mousepad.preferences.window path-in-title true
	gsettings set org.xfce.mousepad.preferences.window recent-menu-items 10
	gsettings set org.xfce.mousepad.preferences.window remember-position false
	gsettings set org.xfce.mousepad.preferences.window remember-size true
	gsettings set org.xfce.mousepad.preferences.window remember-state true
	gsettings set org.xfce.mousepad.preferences.window statusbar-visible-in-fullscreen 'auto'
	gsettings set org.xfce.mousepad.preferences.window statusbar-visible true
	gsettings set org.xfce.mousepad.preferences.window toolbar-icon-size 'small-toolbar'
	gsettings set org.xfce.mousepad.preferences.window toolbar-style 'icons'
	gsettings set org.xfce.mousepad.preferences.window toolbar-visible-in-fullscreen 'auto'
	gsettings set org.xfce.mousepad.preferences.window toolbar-visible true


	return 0
}

##
### Tail: Setting / Module / Mousepad / Settings
################################################################################


################################################################################
### Head: Setting / Module / Mousepad / Gschema
##

mousepad_gschema_put_all () {

	local source_gschema_override_file_path="${THE_MOUSEPAD_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_MOUSEPAD_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"


	return 0
}

##
### Tail: Setting / Module / Mousepad / Gschema
################################################################################
