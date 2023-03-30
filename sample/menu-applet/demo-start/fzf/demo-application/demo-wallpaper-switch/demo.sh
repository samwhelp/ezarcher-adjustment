#!/usr/bin/env bash


menu_list () {

	#ls -1 /usr/share/backgrounds/*.{png,jpg,jpeg}

	ls -1 /usr/share/backgrounds/*.{png,jpg,jpeg} 2>/dev/null

}

menu_factory () {
	fzf
}

menu_start () {
	 menu_list | menu_factory
}

demo_applet () {

	local selected=$(menu_start)
	
	if [ -z "${selected}" ]; then
		echo "## Not selected ##"
		
		return 0
	fi

	echo "## Selected: ${selected}"

	
	local wallpaper_file_path="${selected}"
	
	if ! [ -f "${wallpaper_file_path}" ]; then
		echo "## Wallpaper File Not Exist: ${wallpaper_file_path}"
		
		return 0
	fi	
	

	echo "## Use Wallpaper: ${wallpaper_file_path}"

	wallpaper_ctrl_set "${wallpaper_file_path}"

}


wallpaper_ctrl_set () {

	local agent

	agent="feh"
	#agent="gnome"
	#agent="cinnamon"
	#agent="mate"
	#agent="xfce"


	local delegate="wallpaper_ctrl_set_by_${agent}"

	"${delegate}" "${1}"

}

wallpaper_ctrl_set_by_feh () {

	##
	## https://wiki.archlinux.org/title/feh
	##

	local wallpaper_file_path="${1}"
	feh --bg-scale "${wallpaper_file_path}"

	return 0
}



wallpaper_ctrl_set_by_gnome () {

	echo "TODO: wallpaper_ctrl_set_by_gnome"

	return 0
}

wallpaper_ctrl_set_by_cinnamon () {

	echo "TODO: wallpaper_ctrl_set_by_cinnamon"

	return 0
}

wallpaper_ctrl_set_by_mate () {

	echo "TODO: wallpaper_ctrl_set_by_mate"

	return 0
}

wallpaper_ctrl_set_by_xfce () {

	echo "TODO: wallpaper_ctrl_set_by_xfce"

	return 0
}



__main__ () {
	demo_applet
}

__main__
