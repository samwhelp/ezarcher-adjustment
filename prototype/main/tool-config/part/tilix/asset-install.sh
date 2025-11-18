#!/usr/bin/env bash


################################################################################
### Head: Note
##

##
## ## Link
##
## * https://github.com/samwhelp/skel-project-plan/blob/master/develop/sh/project-helper/basic/helper/bin/prepare.sh
##

##
### Tail: Note
################################################################################


################################################################################
### Head: Init
##

set -e

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "${0}")" ; pwd)"
THE_INIT_DIR_PATH="${THE_BASE_DIR_PATH}/helper/ext"
. "${THE_INIT_DIR_PATH}/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Start
##

main_asset_install () {

	#util_error_echo 'main_asset_install'

	tilix_asset_install




	return 0

}

##
### Tail: Model / Start
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_asset_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
