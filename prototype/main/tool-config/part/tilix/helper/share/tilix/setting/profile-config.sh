#!/usr/bin/env bash


tilix_config_keybind () {

	#gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-in '<Ctrl>plus'
	#gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-normal '<Ctrl>0'
	#gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-out '<Ctrl>minus'


	echo
	echo "gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-normal '<Ctrl>0'"
	gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-normal '<Ctrl>0'

	echo
	echo "gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-out '<Ctrl>minus'"
	gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-out '<Ctrl>minus'

	echo
	echo "gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-in '<Ctrl>equal'"
	gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-in '<Ctrl>equal'




	return 0
}

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
	

	#echo
	#echo "gsettings get \"${path}\" visible-name"
	#gsettings get "${path}" visible-name


	echo
	echo "gsettings set \"${path}\" visible-name 'Default'"
	gsettings set "${path}" visible-name 'Default'

	
	echo
	echo "gsettings set \"${path}\" show-scrollbar false"
	gsettings set "${path}" show-scrollbar false


	echo
	echo "gsettings set \"${path}\" background-transparency-percent 15"
	gsettings set "${path}" background-transparency-percent 15
	
	
	echo
	echo "gsettings set \"${path}\" dim-transparency-percent 5"
	gsettings set "${path}" dim-transparency-percent 5


	echo
	echo "gsettings set \"${path}\" font 'Monospace 14'"
	gsettings set "${path}" font 'Monospace 14'


	echo
	echo "gsettings set \"${path}\" background-color '#303030'"
	gsettings set "${path}" background-color '#303030'


	echo
	echo "gsettings set \"${path}\" foreground-color '#EFEFEF'"
	gsettings set "${path}" foreground-color '#EFEFEF'


	echo
	echo "gsettings set \"${path}\" cursor-background-color '#000000'"
	gsettings set "${path}" cursor-background-color '#000000'


	echo
	echo "gsettings set \"${path}\" cursor-foreground-color '#ffffff'"
	gsettings set "${path}" cursor-foreground-color '#ffffff'


	echo
	echo "gsettings set \"${path}\" highlight-background-color '#000000'"
	gsettings set "${path}" highlight-background-color '#000000'


	echo
	echo "gsettings set \"${path}\" highlight-foreground-color '#ffffff'"
	gsettings set "${path}" highlight-foreground-color '#ffffff'


	echo
	echo "gsettings set \"${path}\" palette \"['#000000', '#CC0000', '#4D9A05', '#C3A000', '#3464A3', '#754F7B', '#05979A', '#D3D6CF', '#545652', '#EF2828', '#89E234', '#FBE84F', '#729ECF', '#AC7EA8', '#34E2E2', '#EDEDEB']\""
	gsettings set "${path}" palette "['#000000', '#CC0000', '#4D9A05', '#C3A000', '#3464A3', '#754F7B', '#05979A', '#D3D6CF', '#545652', '#EF2828', '#89E234', '#FBE84F', '#729ECF', '#AC7EA8', '#34E2E2', '#EDEDEB']"


	

	return 0
	

	echo
	echo "gsettings list-recursively \"${path}\""
	gsettings list-recursively "${path}"


	return 0

} 

tilix_config_keybind
tilix_config_main
