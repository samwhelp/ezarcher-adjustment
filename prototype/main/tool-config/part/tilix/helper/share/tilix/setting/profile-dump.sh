#!/usr/bin/env bash


tilix_config_main () {

	local profile=$(gsettings get com.gexperts.Tilix.ProfilesList default)
	profile=${profile:1:-1} # remove leading and trailing single quotes
	echo
	echo "##"
	echo "## profile=${profile}"
	echo "##"
	
	local path="com.gexperts.Tilix.Profile:/com/gexperts/Tilix/profiles/${profile}/"
	echo
	echo "##"
	echo "## path=${path}"
	echo "##"	
	
	#gsettings get "${path}" show-scrollbar
	
	#gsettings set "${path}" show-scrollbar false
	
	echo
	gsettings list-recursively "${path}"

	return 0
} 

tilix_config_main
