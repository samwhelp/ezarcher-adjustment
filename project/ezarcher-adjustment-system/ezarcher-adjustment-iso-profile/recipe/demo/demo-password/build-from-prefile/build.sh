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
### Head: Model / Build ISO
##

mod_iso_build () {

	local delegate="${THE_BASE_DIR_PATH}/steps.sh"

	sudo "${delegate}"

}


##
### Tail: Model / Build ISO
################################################################################


################################################################################
### Head: Main
##
__main__ () {

	mod_iso_build

}

__main__
##
### Tail: Main
################################################################################

