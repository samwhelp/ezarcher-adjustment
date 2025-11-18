

################################################################################
### Head: System / Gsettings / Schemas / Update
##

sys_gsettings_schemas_update () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## sys_gsettings_schemas_update"
	util_error_echo "##"
	util_error_echo




	util_error_echo
	util_error_echo sudo glib-compile-schemas "${THE_SOURCE_GSCHEMA_DIR_PATH}"
	sudo glib-compile-schemas "${THE_TARGET_GSCHEMA_DIR_PATH}"
	##sudo glib-compile-schemas /usr/share/glib-2.0/schemas
	util_error_echo

	return 0
}

##
### Tail: System / Gsettings / Schemas / Update
################################################################################
