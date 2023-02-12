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
##THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
##source "$THE_BASE_DIR_PATH/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Find Build Script
##

mod_build_list () {

	##cd "${THE_PLAN_DIR_PATH}"

	local package_list_file_path="${THE_BASE_DIR_PATH}/build-list.txt"
	local package_list=$(cat "${package_list_file_path}")
	local package_name


	echo > new-list.txt

	for package_item in ${package_list}; do
		



		echo
		echo
		echo "################################################################################"
		echo "### Head: "
		echo "##"

		#echo "${package_item}"

		#echo "${package_item}" | awk -F '/' '{print $NF}'

		package_name="$(echo "${package_item}" | awk -F '/' '{print $NF}')"

		#echo "${package_name}"

		if grep -q "${package_name}" "xfce/packages.x86_64"; then
			#echo "${package_name}" >> new-list.txt
			echo "${package_item}" >> new-list.txt
		fi

		echo "##"
		echo "### Tail: "
		echo "################################################################################"



	done



}

##
### Tail: Model / Find
################################################################################


################################################################################
### Head: Model / Build
##

mod_build () {

	##echo "TODO: build"

	mod_build_list

	return 0

}

##
### Tail: Model / Build
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	mod_build "$@"
}

__main__ "$@"

##
### Tail: Main
################################################################################
