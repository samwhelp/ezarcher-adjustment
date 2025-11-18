

################################################################################
### Head: System / Dconf / Init
##

sys_dconf_init () {

	sys_dconf_init_dir

	sys_dconf_init_profile

	return 0
}

sys_dconf_init_dir () {

	sys_dconf_init_dir_profile

	sys_dconf_init_dir_db

	return 0

}

sys_dconf_init_dir_profile () {

	util_error_echo
	util_error_echo sudo mkdir -p /etc/dconf/profile
	sudo mkdir -p /etc/dconf/profile
	util_error_echo

	return 0

}

sys_dconf_init_dir_db () {

	util_error_echo
	util_error_echo sudo mkdir -p /etc/dconf/db
	sudo mkdir -p /etc/dconf/db
	util_error_echo


	util_error_echo
	util_error_echo sudo mkdir -p /etc/dconf/db/local.d
	sudo mkdir -p /etc/dconf/db/local.d
	util_error_echo

	util_error_echo
	util_error_echo sudo mkdir -p /etc/dconf/db/site.d
	sudo mkdir -p /etc/dconf/db/site.d
	util_error_echo

	util_error_echo
	util_error_echo sudo mkdir -p /etc/dconf/db/distro.d
	sudo mkdir -p /etc/dconf/db/distro.d
	util_error_echo


	return 0

}


sys_dconf_init_profile () {

	local source_dconf_profile_file_path="${THE_SOURCE_DCONF_PROFILE_FILE_PATH}"

	local target_dconf_profile_file_path="${THE_TARGET_DCONF_PROFILE_FILE_PATH}"

	#util_error_echo "${source_dconf_profile_file_path}"

	#util_error_echo "${target_dconf_profile_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_dconf_profile_file_path}" "${target_dconf_profile_file_path}"
	sudo install -Dm644 "${source_dconf_profile_file_path}" "${target_dconf_profile_file_path}"
	util_error_echo


	return 0

}

##
### Tail: System / Dconf / Init
################################################################################


################################################################################
### Head: System / Dconf / Update
##

sys_dconf_update () {

	util_error_echo
	util_error_echo sudo dconf update
	sudo dconf update
	util_error_echo

	return 0
}

##
### Tail: System / Dconf / Update
################################################################################

