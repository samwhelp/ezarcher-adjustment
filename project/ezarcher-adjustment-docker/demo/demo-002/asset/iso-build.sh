#!/usr/bin/env bash


################################################################################
### Head: Note
##

## * https://github.com/samwhelp/skel-project-plan/blob/gh-pages/demo/sh/project/bin/install.sh

##
### Tail: Note
################################################################################


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
#THE_PLAN_DIR_PATH="$THE_BASE_DIR_PATH"
#THE_CONFIG_FILE_PATH="${THE_PLAN_DIR_PATH}/demo.conf"
#source "$THE_CONFIG_FILE_PATH"
#. "$THE_CONFIG_FILE_PATH"

##
### Tail: Init
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
### Head: Model / Build
##

sys_run_demo () {
	util_error_echo "## TODO: sys_run_demo"
}

mod_run_demo () {
	sys_run_demo
}


mod_clone_repo () {

	util_error_echo "git clone https://github.com/samwhelp/ezarcher-adjustment.git"
	git clone "https://github.com/samwhelp/ezarcher-adjustment.git"

}


mod_init_system () {

	cd "ezarcher-adjustment/project/ezarcher-adjustment-system"

	./link.sh

	cd "${OLDPWD}"


}


mod_build_package () {

	cd "/opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-packaging"

	make build

	cd "${OLDPWD}"

}


mod_update_repo_db () {

	cd "/opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-repository"

	make db-update

	cd "${OLDPWD}"

}


mod_run_build () {

	mod_clone_repo

	mod_init_system

	mod_build_package

	mod_update_repo_db

}

##
### Tail: Model / Build
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	mod_run_build
}

__main__

##
### Tail: Main
################################################################################
