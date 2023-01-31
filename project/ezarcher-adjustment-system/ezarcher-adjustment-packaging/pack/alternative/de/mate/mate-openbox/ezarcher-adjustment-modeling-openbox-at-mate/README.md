
# ezarcher-adjustment-modeling-openbox-at-mate


## Reference

* https://wiki.archlinux.org/title/Creating_packages
* https://wiki.archlinux.org/title/Arch_User_Repository
* https://archlinux.org/groups/x86_64/base-devel/
* https://wiki.archlinux.org/title/pacman
* https://wiki.archlinux.org/title/makepkg
* https://wiki.archlinux.org/title/PKGBUILD
* https://wiki.archlinux.org/title/Arch_package_guidelines


## File List

run

``` sh
pacman -Ql ezarcher-adjustment-modeling-openbox-at-mate -q
```

show

```
/etc/
/etc/skel/
/etc/skel/.config/
/etc/skel/.config/openbox-at-mate/
/etc/skel/.config/openbox-at-mate/environment
/etc/skel/.config/openbox-at-mate/helper/
/etc/skel/.config/openbox-at-mate/helper/share/
/etc/skel/.config/openbox-at-mate/helper/share/gen/
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/.gitignore
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Makefile
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/README.md
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Applications.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Coordinates.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Desktops.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Dock.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Focus.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/ApplicationFocusFavorite.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/ApplicationFocusFn.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/ApplicationFocusTerminal.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/ApplicationLaunchFavorite.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/ApplicationLaunchRofi.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/ApplicationLaunchRunDialog.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/ApplicationLaunchTerminal.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/MenuClient.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/MenuClientList.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/MenuRoot.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/Screenshot.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/SystemExit.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/SystemSetting.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/SystemToggleShowDesktop.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/Volume.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/Wallpaper.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowBeginMove.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowBeginResize.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowClose.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowFocusSwitch.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowIconify.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowMoveToCenter.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowMoveToWorkspace.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowRaiseLower.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowSendToLayer.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowSwitch.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowTiling.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowTilingMoveCorner.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowTilingMoveSide.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowToggleAlwaysOnBottom.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowToggleAlwaysOnTop.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowToggleDecorations.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowToggleFullscreen.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowToggleMaximize.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WindowToggleShade.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keybind/WorkspaceSwitch.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Keyboard.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Margins.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Menu.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Mouse.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Mousebind/
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Mousebind/Client.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Mousebind/Desktop.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Mousebind/Frame.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Mousebind/MoveResize.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Mousebind/Root.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Mousebind/Titlebar.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Placement.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Resistance.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Resize.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Atom.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Audacious.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/ChromiumBrowser.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Code.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Dolphin.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Filezilla.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Firefox.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Geany.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Gedit.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Gimp.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/GnomeBuilder.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/GnomeTerminal.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/GoogleChrome.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Kate.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Kdevelop.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Leafpad.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Libreoffice.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/MateTerminal.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Mousepad.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Mpv.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Nautilus.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/NormalNoDecorations.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Openshot.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Pcmanfm-qt.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Pcmanfm.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/QtCreator.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Sakura.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Smplayer.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Spacefm.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Terminator.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Thunar.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Vlc.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Xephyr.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Rule/Xfce4Terminal.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/Section/Theme.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/rc.php
/etc/skel/.config/openbox-at-mate/helper/share/gen/openbox-gen-rc/rc.xml
/etc/skel/.config/openbox-at-mate/menu.xml
/etc/skel/.config/openbox-at-mate/rc.xml

```

* [~/.config/openbox-at-mate/rc.xml](asset/overlay/etc/skel/.config/openbox-at-mate/rc.xml)
* [~/.config/openbox-at-mate/menu.xml](asset/overlay/etc/skel/.config/openbox-at-mate/menu.xml)
* [~/.config/openbox-at-mate/environment](asset/overlay/etc/skel/.config/openbox-at-mate/environment)

