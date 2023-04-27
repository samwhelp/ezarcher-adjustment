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

THE_PLAN_OVERLAY_BUILD_DIR_NAME="overlay-build"
THE_PLAN_OVERLAY_BUILD_DIR_PATH="${THE_PLAN_ASSET_DIR_PATH}/${THE_PLAN_OVERLAY_BUILD_DIR_NAME}"

THE_PLAN_PACKAGE_DIR_NAME="package"
THE_PLAN_PACKAGE_DIR_PATH="${THE_PLAN_ASSET_DIR_PATH}/${THE_PLAN_PACKAGE_DIR_NAME}"


##
### Tail: Path
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

	sleep 5
	return 0

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

	mod_overlay_pacman_conf
	mod_overlay_packages_x86_64
	mod_overlay_locale

}


##
### Tail: Model / Build ISO / Overlay Profile
################################################################################


################################################################################
### Head: Model / Overlay / pacman.conf
##

mod_overlay_pacman_conf () {

	util_error_echo
	util_error_echo "install -Dm644 ${THE_PLAN_OVERLAY_DIR_PATH}/etc/pacman.conf ${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/pacman.conf"
	install -Dm644 "${THE_PLAN_OVERLAY_DIR_PATH}/etc/pacman.conf" "${THE_PLAN_PROFILE_ROOTFS_DIR_PATH}/etc/pacman.conf"


	util_error_echo
	util_error_echo "install -Dm644 ${THE_PLAN_OVERLAY_BUILD_DIR_PATH}/pacman.conf ${THE_PLAN_PROFILE_DIR_PATH}/pacman.conf"
	install -Dm644 "${THE_PLAN_OVERLAY_BUILD_DIR_PATH}/pacman.conf" "${THE_PLAN_PROFILE_DIR_PATH}/pacman.conf"

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
	cat "${THE_PLAN_PACKAGE_DIR_PATH}/common.txt" >> "${THE_PLAN_PROFILE_DIR_PATH}/packages.x86_64"

}

##
### Tail: Model / Overlay / packages.x86_64
################################################################################


################################################################################
### Head: Model / Overlay / locale
##

mod_overlay_locale () {

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

##
### Tail: Model / Overlay / locale
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

