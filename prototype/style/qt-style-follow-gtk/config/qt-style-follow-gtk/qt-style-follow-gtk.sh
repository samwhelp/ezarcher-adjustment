


##
## * https://wiki.archlinux.org/title/Uniform_look_for_Qt_and_GTK_applications#QGtkStyle
## * https://wiki.archlinux.org/title/qt
##




if [ "$XDG_CURRENT_DESKTOP" != "KDE" ]; then

	##
	## follow by gtk2
	##

	export QT_QPA_PLATFORMTHEME=gtk2


	##
	## follow by kvantum
	##

	#export QT_QPA_PLATFORMTHEME=kvantum



	##
	## follow by qt5ct
	##

	#export QT_QPA_PLATFORMTHEME=qt5ct

	#export QT_STYLE_OVERRIDE=kvantum
	#export QT_STYLE_OVERRIDE=gtk2

fi
