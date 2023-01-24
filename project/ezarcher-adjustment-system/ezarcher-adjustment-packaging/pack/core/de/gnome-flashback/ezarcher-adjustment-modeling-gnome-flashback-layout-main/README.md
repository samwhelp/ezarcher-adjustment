
# ezarcher-adjustment-modeling-gnome-flashback-layout-main


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
pacman -Ql ezarcher-adjustment-modeling-gnome-flashback-layout-main -q
```

show

```
/usr/
/usr/share/
/usr/share/glib-2.0/
/usr/share/glib-2.0/schemas/
/usr/share/glib-2.0/schemas/50_gnome-flashback-layout-main.gschema.override
```

* [/usr/share/glib-2.0/schemas/50_gnome-flashback-layout-main.gschema.override](asset/overlay/usr/share/glib-2.0/schemas/50_gnome-flashback-layout-main.gschema.override)


## Note

* [/usr/share/glib-2.0/schemas/00_gnome-flashback.gschema.override](https://archlinux.org/packages/community/x86_64/gnome-flashback/)

run

``` sh
pacman -Qo /usr/share/glib-2.0/schemas/00_gnome-flashback.gschema.override
```

show

```
/usr/share/glib-2.0/schemas/00_gnome-flashback.gschema.override is owned by gnome-flashback 3.46.0-1
```

run

``` sh
cat /usr/share/glib-2.0/schemas/00_gnome-flashback.gschema.override
```

show

```
[org.gnome.desktop.wm.keybindings:GNOME-Flashback]
panel-main-menu=['<Alt>F1']

[org.gnome.desktop.wm.preferences:GNOME-Flashback]
button-layout='appmenu:minimize,maximize,close'

[org.gnome.gnome-panel.general:GNOME-Flashback]
default-layout='gnome-flashback'
```
