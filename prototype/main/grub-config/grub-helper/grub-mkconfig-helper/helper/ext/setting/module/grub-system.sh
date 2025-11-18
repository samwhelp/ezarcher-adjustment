

################################################################################
### Head: Setting / Module / Grub-System / Variable
##

grub_system_var_init () {


	THE_COMMAND_UPDATE_GRUB="update-grub"
	THE_COMMAND_UPDATE_GRUB2="update-grub2"
	THE_COMMAND_GRUB_MKCONFIG="grub-mkconfig -o /boot/grub/grub.cfg"



	return 0

}

grub_system_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: grub_system_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Grub-System / Config"
	util_debug_echo "##"


	util_debug_echo
	util_debug_echo "THE_COMMAND_UPDATE_GRUB=${THE_COMMAND_UPDATE_GRUB}"
	util_debug_echo "THE_COMMAND_UPDATE_GRUB2=${THE_COMMAND_UPDATE_GRUB2}"
	util_debug_echo "THE_COMMAND_GRUB_MKCONFIG=${THE_COMMAND_GRUB_MKCONFIG}"


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: grub_system_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

grub_system_var_init
grub_system_var_dump

##
### Tail: Setting / Module / Grub-System / Variable
################################################################################


################################################################################
### Head: Setting / Module / Grub-System / Portal
##

grub_system_config_recreate () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## grub_system_config_recreate"
	util_error_echo "##"
	util_error_echo


	#mod_grub_system_update_grub

	mod_grub_system_grub_mkconfig


	util_error_echo

	return 0

}

##
### Tail: Setting / Module / Grub-System / Portal
################################################################################




################################################################################
### Head: Grub-System / config_recreate
##

mod_grub_system_update_grub () {

	util_error_echo
	util_error_echo sudo ${THE_COMMAND_UPDATE_GRUB}
	util_error_echo
	sudo ${THE_COMMAND_UPDATE_GRUB}

	return 0
}

mod_grub_system_grub_mkconfig () {

	util_error_echo
	util_error_echo sudo ${THE_COMMAND_GRUB_MKCONFIG}
	util_error_echo
	sudo ${THE_COMMAND_GRUB_MKCONFIG}

	return 0
}

##
### Tail: Grub-System / config_recreate
################################################################################
