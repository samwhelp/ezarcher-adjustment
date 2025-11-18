#!/usr/bin/env bash

set -e


################################################################################
### Head: fcitx5
##

fcitx5_config_run_pre () {

	#fcitx5_service_stop


	return 0

}

fcitx5_config_run_post () {

	#fcitx5_service_start

	im_config_apply_fcitx5


	return 0

}

fcitx5_service_stop () {


	return 0

}

fcitx5_service_start () {


	return 0

}

im_config_apply_fcitx5 () {

	#echo
	#echo "sudo mkdir -p /etc/profile.d"
	#sudo mkdir -p "/etc/profile.d"

	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/profile.d/input-method.sh/etc/profile.d/input-method.sh"
	sudo install -Dm644 "./asset/overlay/etc/profile.d/input-method.sh" "/etc/profile.d/input-method.sh"


	return 0

}

fcitx5_config_install () {

	echo
	echo "##"
	echo "## Config: fcitx5"
	echo "##"
	echo


	fcitx5_config_install_by_dir

	#fcitx5_config_install_by_each_file


	echo

}

fcitx5_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

fcitx5_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/fcitx5"
	mkdir -p "${HOME}/.config/fcitx5"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/fcitx5/fcitx5.conf ${HOME}/.config/fcitx5/fcitx5.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/fcitx5/fcitx5.conf" "${HOME}/.config/fcitx5/fcitx5.conf"


}

##
### Tail: fcitx5
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	fcitx5_config_run_pre

	fcitx5_config_install

	fcitx5_config_run_post

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
