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

THE_PLAN_ASSET_DIR_NAME="tmp"
THE_PLAN_ASSET_DIR_PATH="${THE_PLAN_DIR_PATH}/${THE_PLAN_ASSET_DIR_NAME}"

THE_PLAN_TMP_DIR_NAME="tmp"
THE_PLAN_TMP_DIR_PATH="${THE_PLAN_DIR_PATH}/${THE_PLAN_TMP_DIR_NAME}"

THE_PLAN_PROFILE_DIR_NAME="profile"
THE_PLAN_PROFILE_DIR_PATH="${THE_PLAN_TMP_DIR_PATH}/${THE_PLAN_PROFILE_DIR_NAME}"

THE_PLAN_WORK_DIR_NAME="work"
THE_PLAN_WORK_DIR_PATH="${THE_PLAN_TMP_DIR_PATH}/${THE_PLAN_WORK_DIR_NAME}"

THE_PLAN_OUT_DIR_NAME="out"
THE_PLAN_OUT_DIR_PATH="${THE_PLAN_TMP_DIR_PATH}/${THE_PLAN_OUT_DIR_NAME}"

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

	exit 0

}

exit_on_signal_terminated () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## **Script Terminated**"
	util_error_echo "##"
	util_error_echo

	sys_clean_on_exit

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
### Head: Model / Build ISO
##

mod_iso_profile_prepare () {

	mkdir -p "${THE_PLAN_PROFILE_DIR_PATH}"

	cp -r "${THE_BASE_ARCHISO_PROFILE_DIR_PATH}/." "${THE_PLAN_PROFILE_DIR_PATH}"

	mod_iso_profile_overlay


}



mod_iso_make_prepare () {

	sys_clean_on_prepare
	mod_iso_profile_prepare

}


mod_iso_make () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## Building New ISO"
	util_error_echo "##"
	util_error_echo

	sleep 5

	return 0

	#sudo mkarchiso -v profile
	sudo mkarchiso -w tmp/work -o tmp/out -v tmp/profile


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
	mod_iso_make
	mod_iso_make_finish

}

##
### Tail: Model / Build ISO
################################################################################


################################################################################
### Head: Model / Build ISO / Overlay Profile
##

mod_iso_profile_overlay () {
	mod_iso_profile_overlay_pacman_conf
	mod_iso_profile_overlay_packages_x86_64
	mod_iso_profile_overlay_locale
}

mod_iso_profile_overlay_pacman_conf () {
	cp -f ./asset/overlay/etc/pacman.conf ./tmp/profile/airootfs/etc/pacman.conf

	cp -f ./asset/overlay-build/pacman.conf ./tmp/profile/pacman.conf
}

mod_iso_profile_overlay_packages_x86_64 () {
	cat ./asset/overlay-build/packages.x86_64.part >> ./tmp/profile/packages.x86_64
}

mod_iso_profile_overlay_locale () {

	cp -f ./asset/overlay/etc/locale.conf ./tmp/profile/airootfs/etc/locale.conf
	
	#cp -f ./asset/overlay/etc/locale.gen ./tmp/profile/airootfs/etc/locale.gen
	
	cp -f ./asset/overlay/etc/pacman.d/hooks/40-locale-gen.hook ./tmp/profile/airootfs/etc/pacman.d/hooks/40-locale-gen.hook
}

##
### Tail: Model / Build ISO / Overlay Profile
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

