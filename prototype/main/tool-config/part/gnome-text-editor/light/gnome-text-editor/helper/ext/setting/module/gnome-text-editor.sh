

################################################################################
### Head: Setting / Module / Gnome-Text-Editor / Variable
##

gnome_text_editor_var_init () {

	THE_GNOME_TEXT_EDITOR_GSCHEMA_OVERRIDE_FILE_NAME="50_gnome-text-editor.gschema.override"

	THE_GNOME_TEXT_EDITOR_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_GNOME_TEXT_EDITOR_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_GNOME_TEXT_EDITOR_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_GNOME_TEXT_EDITOR_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

gnome_text_editor_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: gnome_text_editor_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Gnome-Text-Editor / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GNOME_TEXT_EDITOR_GSCHEMA_OVERRIDE_FILE_NAME=${THE_GNOME_TEXT_EDITOR_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_GNOME_TEXT_EDITOR_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GNOME_TEXT_EDITOR_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_GNOME_TEXT_EDITOR_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GNOME_TEXT_EDITOR_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: gnome_text_editor_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

gnome_text_editor_var_init
gnome_text_editor_var_dump

##
### Tail: Setting / Module / Gnome-Text-Editor / Variable
################################################################################


################################################################################
### Head: Setting / Module / Gnome-Text-Editor / Portal
##

gnome_text_editor_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_text_editor_config_install"
	util_error_echo "##"
	util_error_echo




	gnome_text_editor_settings_set_all


	return 0

}


gnome_text_editor_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_text_editor_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


gnome_text_editor_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_text_editor_prototype_install"
	util_error_echo "##"
	util_error_echo




	gnome_text_editor_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Gnome-Text-Editor / Portal
################################################################################


################################################################################
### Head: Setting / Module / Gnome-Text-Editor / Settings
##

gnome_text_editor_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor auto-indent true"
	gsettings set org.gnome.TextEditor auto-indent true


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor auto-save-delay 3"
	gsettings set org.gnome.TextEditor auto-save-delay 3


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor custom-font 'Monospace 14'"
	gsettings set org.gnome.TextEditor custom-font 'Monospace 14'


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor discover-settings true"
	gsettings set org.gnome.TextEditor discover-settings true


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor draw-spaces \"[]\""
	gsettings set org.gnome.TextEditor draw-spaces "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor enable-snippets false"
	gsettings set org.gnome.TextEditor enable-snippets false


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor highlight-current-line true"
	gsettings set org.gnome.TextEditor highlight-current-line true


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor highlight-matching-brackets true"
	gsettings set org.gnome.TextEditor highlight-matching-brackets true


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor indent-style 'tab'"
	gsettings set org.gnome.TextEditor indent-style 'tab'


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor indent-width -1"
	gsettings set org.gnome.TextEditor indent-width -1


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor keybindings 'default'"
	gsettings set org.gnome.TextEditor keybindings 'default'


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor last-save-directory ''"
	gsettings set org.gnome.TextEditor last-save-directory ''


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor line-height 1.2"
	gsettings set org.gnome.TextEditor line-height 1.2


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor recolor-window true"
	gsettings set org.gnome.TextEditor recolor-window true


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor restore-session false"
	gsettings set org.gnome.TextEditor restore-session false


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor right-margin-position 80"
	gsettings set org.gnome.TextEditor right-margin-position 80


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor show-grid false"
	gsettings set org.gnome.TextEditor show-grid false


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor show-line-numbers true"
	gsettings set org.gnome.TextEditor show-line-numbers true


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor show-map true"
	gsettings set org.gnome.TextEditor show-map true


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor show-right-margin true"
	gsettings set org.gnome.TextEditor show-right-margin true


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor spellcheck true"
	gsettings set org.gnome.TextEditor spellcheck true


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor style-scheme 'solarized-light'"
	gsettings set org.gnome.TextEditor style-scheme 'solarized-light'


	#util_error_echo
	#util_error_echo "gsettings set org.gnome.TextEditor style-variant 'follow'"
	#gsettings set org.gnome.TextEditor style-variant 'follow'

	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor style-variant 'light'"
	gsettings set org.gnome.TextEditor style-variant 'light'


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor tab-width 4"
	gsettings set org.gnome.TextEditor tab-width 4


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor use-system-font false"
	gsettings set org.gnome.TextEditor use-system-font false


	util_error_echo
	util_error_echo "gsettings set org.gnome.TextEditor wrap-text true"
	gsettings set org.gnome.TextEditor wrap-text true




	return 0

}

##
### Tail: Setting / Module / Gnome-Text-Editor / Settings
################################################################################


################################################################################
### Head: Setting / Module / Gnome-Text-Editor / Gschema
##

gnome_text_editor_gschema_put_all () {

	local source_gschema_override_file_path="${THE_GNOME_TEXT_EDITOR_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_GNOME_TEXT_EDITOR_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"


	return 0
}

##
### Tail: Setting / Module / Gnome-Text-Editor / Gschema
################################################################################
