#!/usr/bin/env bash


################################################################################
### Head: Init
##

set -e ## for Exit immediately if a command exits with a non-zero status.
THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_CMD_FILE_NAME="$(basename "$0")"

##
### Tail: Init
################################################################################


################################################################################
### Head: Path
##

THE_BASE_ARCHISO_PROFILE_DIR_PATH="/usr/share/archiso/configs/releng"

THE_PLAN_DIR_PATH="${THE_BASE_DIR_PATH}"




THE_PLAN_TMP_DIR_NAME="tmp"
THE_PLAN_TMP_DIR_PATH="${THE_PLAN_DIR_PATH}/${THE_PLAN_TMP_DIR_NAME}"

THE_PLAN_WORK_DIR_NAME="work"
THE_PLAN_WORK_DIR_PATH="${THE_PLAN_TMP_DIR_PATH}/${THE_PLAN_WORK_DIR_NAME}"

THE_PLAN_OUT_DIR_NAME="out"
THE_PLAN_OUT_DIR_PATH="${THE_PLAN_TMP_DIR_PATH}/${THE_PLAN_OUT_DIR_NAME}"




THE_PLAN_PROFILE_DIR_NAME="profile"
THE_PLAN_PROFILE_DIR_PATH="${THE_PLAN_TMP_DIR_PATH}/${THE_PLAN_PROFILE_DIR_NAME}"

THE_PLAN_PROFILE_ROOTFS_DIR_NAME="airootfs"
THE_PLAN_PROFILE_ROOTFS_DIR_PATH="${THE_PLAN_PROFILE_DIR_PATH}/${THE_PLAN_PROFILE_ROOTFS_DIR_NAME}"




THE_PLAN_ASSET_DIR_NAME="asset"
THE_PLAN_ASSET_DIR_PATH="${THE_PLAN_DIR_PATH}/${THE_PLAN_ASSET_DIR_NAME}"

THE_PLAN_OVERLAY_DIR_NAME="overlay"
THE_PLAN_OVERLAY_DIR_PATH="${THE_PLAN_ASSET_DIR_PATH}/${THE_PLAN_OVERLAY_DIR_NAME}"

THE_PLAN_BUILD_DIR_NAME="build"
THE_PLAN_BUILD_DIR_PATH="${THE_PLAN_ASSET_DIR_PATH}/${THE_PLAN_BUILD_DIR_NAME}"

THE_PLAN_PACKAGE_DIR_NAME="package"
THE_PLAN_PACKAGE_DIR_PATH="${THE_PLAN_ASSET_DIR_PATH}/${THE_PLAN_PACKAGE_DIR_NAME}"

THE_PLAN_BOOT_DIR_NAME="boot"
THE_PLAN_BOOT_DIR_PATH="${THE_PLAN_ASSET_DIR_PATH}/${THE_PLAN_BOOT_DIR_NAME}"



THE_PLAN_CONFIG_DIR_NAME="config"
THE_PLAN_CONFIG_DIR_PATH="${THE_PLAN_ASSET_DIR_PATH}/${THE_PLAN_CONFIG_DIR_NAME}"

THE_PLAN_CONFIG_MAIN_DIR_NAME="main"
THE_PLAN_CONFIG_MAIN_DIR_PATH="${THE_PLAN_CONFIG_DIR_PATH}/${THE_PLAN_CONFIG_MAIN_DIR_NAME}"

##
### Tail: Path
################################################################################


################################################################################
### Head: Config
##

sys_config_live_user_name () {
	cat "$THE_PLAN_CONFIG_MAIN_DIR_PATH/live-user-name.conf"
}

sys_config_live_user_password () {
	cat "$THE_PLAN_CONFIG_MAIN_DIR_PATH/live-user-password.conf"
}

sys_config_root_user_password () {
	cat "$THE_PLAN_CONFIG_MAIN_DIR_PATH/root-user-password.conf"
}

##
### Tail: Config
################################################################################


################################################################################
### Head: Util / Debug
##

util_error_echo () {
	echo "$@" 1>&2
}

##
### Head: Util / Debug
################################################################################


################################################################################
### Head: Signal
##

exit_on_signal_interrupted () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## **Script Interrupted**"
	util_error_echo "##"
	util_error_echo

	sys_clean_on_exit

	sleep 2

	exit 0

}

exit_on_signal_terminated () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## **Script Terminated**"
	util_error_echo "##"
	util_error_echo

	sys_clean_on_exit

	sleep 2

	exit 0

}

sys_signal_bind () {

	trap exit_on_signal_interrupted SIGINT
	trap exit_on_signal_terminated SIGTERM

}

##
### Tail: Signal
################################################################################


################################################################################
### Head: User
##

sys_root_user_required () {

	if [[ "${EUID}" = 0 ]]; then
		return 0
	else
		util_error_echo "Please Run As Root"
		#sleep 2
		exit 0
	fi

}

##
### Tail: User
################################################################################


################################################################################
### Head: Clean
##

sys_clean_on_prepare () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## Cleaning Data On Prepare"
	util_error_echo "##"
	util_error_echo


	util_error_echo
	util_error_echo "rm -rf ${THE_PLAN_TMP_DIR_PATH}"
	rm -rf "${THE_PLAN_TMP_DIR_PATH}"


	util_error_echo

}

sys_clean_on_exit () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## Cleaning Data On Exit"
	util_error_echo "##"
	util_error_echo



}

sys_clean_on_finish () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## Cleaning Data On Finish"
	util_error_echo "##"
	util_error_echo


}

##
### Tail: Clean
################################################################################


################################################################################
### Head: Requirements
##

sys_package_required () {

	return 0

	util_error_echo
	util_error_echo "##"
	util_error_echo "## Check Package Required"
	util_error_echo "##"
	util_error_echo


	util_error_echo
	util_error_echo "pacman -S --noconfirm archlinux-keyring"
	util_error_echo
	pacman -S --noconfirm archlinux-keyring


	util_error_echo


	util_error_echo
	util_error_echo "pacman -S --needed --noconfirm archiso mkinitcpio-archiso"
	util_error_echo
	pacman -S --needed --noconfirm archiso mkinitcpio-archiso


	util_error_echo

}

##
### Tail: Requirements
################################################################################



################################################################################
### Head: Model / Build ISO
##

mod_iso_make_prepare () {

	sys_package_required

	sys_clean_on_prepare

	mod_iso_profile_prepare

}


mod_iso_make_start () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## Building New ISO"
	util_error_echo "##"
	util_error_echo

	#sleep 5
	#return 0

	util_error_echo "mkarchiso -w ${THE_PLAN_WORK_DIR_PATH} -o ${THE_PLAN_OUT_DIR_PATH} -v ${THE_PLAN_PROFILE_DIR_PATH}"
	mkarchiso -w "${THE_PLAN_WORK_DIR_PATH}" -o "${THE_PLAN_OUT_DIR_PATH}" -v "${THE_PLAN_PROFILE_DIR_PATH}"


	util_error_echo
	util_error_echo


}

mod_iso_make_finish () {

	mod_iso_make_copy_to_store

	sys_clean_on_finish

}

mod_iso_make_copy_to_store () {

	local iso_store_dir_path="../../../../iso/"

	if ! [ -d "${iso_store_dir_path}" ]; then
		return
	fi

	cp -a out/*.iso "${iso_store_dir_path}/"
}

mod_iso_build () {

	mod_iso_make_prepare
	mod_iso_make_start
	mod_iso_make_finish

}

##
### Tail: Model / Build ISO
################################################################################




################################################################################
### Head: Model / Build ISO / Base Profile
##

mod_iso_profile_prepare () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## Prepare ISO Profile"
	util_error_echo "##"
	util_error_echo

	mod_iso_profile_base
	mod_iso_profile_overlay


}

mod_iso_profile_base () {

	util_error_echo
	util_error_echo
	util_error_echo "##"
	util_error_echo "## Prepare ISO Profile / Base"
	util_error_echo "##"
	util_error_echo


	util_error_echo
	util_error_echo "mkdir -p ${THE_PLAN_PROFILE_DIR_PATH}"
	mkdir -p "${THE_PLAN_PROFILE_DIR_PATH}"


	util_error_echo
	util_error_echo "cp -rf ${THE_BASE_ARCHISO_PROFILE_DIR_PATH}/. ${THE_PLAN_PROFILE_DIR_PATH}"
	cp -rf "${THE_BASE_ARCHISO_PROFILE_DIR_PATH}/." "${THE_PLAN_PROFILE_DIR_PATH}"



	util_error_echo
}

##
### Tail: Model / Build ISO / Base Profile
################################################################################


################################################################################
### Head: Model / Build ISO / Overlay Profile
##

mod_iso_profile_overlay () {

	util_error_echo
	util_error_echo
	util_error_echo "##"
	util_error_echo "## Prepare ISO Profile / Overlay"
	util_error_echo "##"
	util_error_echo


	##
	## ## base
	##

	mod_overlay_by_dir


	##
	## ## permission
	##

	mod_overlay_passwd
	mod_overlay_group
	mod_overlay_shadow
	mod_overlay_gshadow


	##
	## ## profiledef
	##

	mod_overlay_profiledef

	##
	## ## package
	##
	mod_overlay_pacman_conf
	mod_overlay_packages_x86_64


	##
	## ## locale
	##

	mod_overlay_locale
	mod_overlay_localtime

}


##
### Tail: Model / Build ISO / Overlay Profile
################################################################################




################################################################################
### Head: Model / Overlay / by_dir
##

mod_overlay_by_dir () {

	util_error_echo
	util_error_echo "cp -rf ${THE_PLAN_OVERLAY_DIR_PATH}/. ${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}"
	cp -rf "${THE_PLAN_OVERLAY_DIR_PATH}/." "${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}"

}

##
### Tail: Model / Overlay / by_dir
################################################################################


################################################################################
### Head: Model / Overlay / passwd
##

mod_overlay_passwd () {

	local live_user_name="$(sys_config_live_user_name)"

	util_error_echo
	util_error_echo "## overlay ${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/passwd"
	util_error_echo

cat > "${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/passwd" << EOF
root:x:0:0:root:/root:/usr/bin/bash
${live_user_name}:x:1000:1000::/home/${live_user_name}:/bin/bash
EOF


	return 0

}

mod_overlay_group () {

	local live_user_name="$(sys_config_live_user_name)"

	util_error_echo
	util_error_echo "## overlay ${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/group"
	util_error_echo

cat > "${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/group" << EOF
root:x:0:root
sys:x:3:bin,${live_user_name}
network:x:90:${live_user_name}
power:x:98:${live_user_name}
adm:x:999:${live_user_name}
wheel:x:998:${live_user_name}
uucp:x:987:${live_user_name}
optical:x:990:${live_user_name}
scanner:x:991:${live_user_name}
rfkill:x:983:${live_user_name}
video:x:986:${live_user_name}
storage:x:988:${live_user_name}
audio:x:995:${live_user_name}
users:x:985:${live_user_name}
nopasswdlogin:x:966:${live_user_name}
autologin:x:967:${live_user_name}
sambashare:x:959:${live_user_name}
${live_user_name}:x:1000:
EOF

	return 0

}

mod_overlay_shadow () {

	local live_user_name="$(sys_config_live_user_name)"
	local live_user_password="$(sys_config_live_user_password)"
	local root_user_password="$(sys_config_root_user_password)"
	local live_user_password_hash="$(openssl passwd -6 "${live_user_password}")"
	local root_user_password_hash="$(openssl passwd -6 "${root_user_password}")"


	util_error_echo
	util_error_echo "## overlay ${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/shadow"
	util_error_echo

cat > "${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/shadow" << EOF
root:${root_user_password_hash}:14871::::::
${live_user_name}:${live_user_password_hash}:14871::::::
EOF


	return 0

}

mod_overlay_gshadow () {

	local live_user_name="$(sys_config_live_user_name)"

	util_error_echo
	util_error_echo "## overlay ${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/gshadow"
	util_error_echo

cat > "${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/gshadow" << EOF
root:::root
sys:!!::${live_user_name}
network:!!::${live_user_name}
power:!!::${live_user_name}
adm:!!::${live_user_name}
wheel:!!::${live_user_name}
uucp:!!::${live_user_name}
optical:!!::${live_user_name}
scanner:!!::${live_user_name}
rfkill:!!::${live_user_name}
video:!!::${live_user_name}
storage:!!::${live_user_name}
audio:!!::${live_user_name}
users:!!::${live_user_name}
nopasswdlogin:!::${live_user_name}
autologin:!::${live_user_name}
sambashare:!::${live_user_name}
${live_user_name}:!::
EOF


	return 0

}

##
### Tail: Model / Overlay / passwd
################################################################################



################################################################################
### Head: Model / Overlay / locale
##

mod_overlay_locale () {

	return 0

	util_error_echo
	util_error_echo "install -Dm644 ${THE_PLAN_OVERLAY_DIR_PATH}/etc/locale.conf ${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/locale.conf"
	install -Dm644 "${THE_PLAN_OVERLAY_DIR_PATH}/etc/locale.conf" "${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/locale.conf"


	#util_error_echo
	#util_error_echo "install -Dm644 ${THE_PLAN_OVERLAY_DIR_PATH}/etc/locale.gen ${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/locale.gen"
	#install -Dm644 "${THE_PLAN_OVERLAY_DIR_PATH}/etc/locale.gen" "${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/locale.gen"


	util_error_echo
	util_error_echo "install -Dm644 ${THE_PLAN_OVERLAY_DIR_PATH}/etc/pacman.d/hooks/40-locale-gen.hook ${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/pacman.d/hooks/40-locale-gen.hook"
	install -Dm644 "${THE_PLAN_OVERLAY_DIR_PATH}/etc/pacman.d/hooks/40-locale-gen.hook" "${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/pacman.d/hooks/40-locale-gen.hook"


}

mod_overlay_localtime () {

	local local_time_file_path="/usr/share/zoneinfo/Asia/Taipei"


	util_error_echo
	util_error_echo "ln -sf ${local_time_file_path} ${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/localtime"
	ln -sf "${local_time_file_path}" "${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/localtime"

}

##
### Tail: Model / Overlay / locale
################################################################################


################################################################################
### Head: Model / Overlay / profiledef.sh
##

mod_overlay_profiledef () {


	util_error_echo
	util_error_echo "install -Dm755 ${THE_PLAN_BUILD_DIR_PATH}/profiledef.sh ${THE_PLAN_PROFILE_DIR_PATH}/profiledef.sh"
	install -Dm755 "${THE_PLAN_BUILD_DIR_PATH}/profiledef.sh" "${THE_PLAN_PROFILE_DIR_PATH}/profiledef.sh"


	return 0


}

##
### Tail: Model / Overlay / profiledef.sh
################################################################################


################################################################################
### Head: Model / Overlay / pacman.conf
##

mod_overlay_pacman_conf () {


	util_error_echo
	util_error_echo "install -Dm644 ${THE_PLAN_BUILD_DIR_PATH}/pacman.conf ${THE_PLAN_PROFILE_DIR_PATH}/pacman.conf"
	install -Dm644 "${THE_PLAN_BUILD_DIR_PATH}/pacman.conf" "${THE_PLAN_PROFILE_DIR_PATH}/pacman.conf"


	return 0


	util_error_echo
	util_error_echo "install -Dm644 ${THE_PLAN_OVERLAY_DIR_PATH}/etc/pacman.conf ${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/pacman.conf"
	install -Dm644 "${THE_PLAN_OVERLAY_DIR_PATH}/etc/pacman.conf" "${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/pacman.conf"


}

##
### Tail: Model / Overlay / pacman.conf
################################################################################


################################################################################
### Head: Model / Overlay / packages.x86_64
##

mod_overlay_packages_x86_64 () {

	util_error_echo
	util_error_echo "cat ${THE_PLAN_PACKAGE_DIR_PATH}/common.txt >> ${THE_PLAN_PROFILE_DIR_PATH}/packages.x86_64"
	cat "${THE_PLAN_PACKAGE_DIR_PATH}/base.txt" >> "${THE_PLAN_PROFILE_DIR_PATH}/packages.x86_64"

	return 0

	util_error_echo
	util_error_echo "cat ${THE_PLAN_PACKAGE_DIR_PATH}/common.txt >> ${THE_PLAN_PROFILE_DIR_PATH}/packages.x86_64"
	cat "${THE_PLAN_PACKAGE_DIR_PATH}/common.txt" >> "${THE_PLAN_PROFILE_DIR_PATH}/packages.x86_64"

}

##
### Tail: Model / Overlay / packages.x86_64
################################################################################




################################################################################
### Head: Main
##

__main__ () {

	sys_root_user_required
	sys_signal_bind
	mod_iso_build

}

__main__

##
### Tail: Main
################################################################################

