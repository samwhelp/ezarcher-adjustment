
# ezarcher-adjustment-modeling-cinnamon-favorite-apps


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
pacman -Ql ezarcher-adjustment-modeling-cinnamon-favorite-apps -q
```

show

```
/usr/
/usr/share/
/usr/share/glib-2.0/
/usr/share/glib-2.0/schemas/
/usr/share/glib-2.0/schemas/50_cinnamon-favorite-apps.gschema.override
```

* [/usr/share/glib-2.0/schemas/50_cinnamon-favorite-apps.gschema.override](asset/overlay/usr/share/glib-2.0/schemas/50_cinnamon-favorite-apps.gschema.override)



## Explore

run

``` sh
gsettings list-recursively | grep cinnamon | grep default-applications | sort
```

show

```
org.cinnamon.desktop.default-applications.calculator exec 'gnome-calculator'
org.cinnamon.desktop.default-applications.calculator needs-term false
org.cinnamon.desktop.default-applications.office.calendar exec 'evolution -c calendar'
org.cinnamon.desktop.default-applications.office.calendar needs-term false
org.cinnamon.desktop.default-applications.office.tasks exec 'evolution -c tasks'
org.cinnamon.desktop.default-applications.office.tasks needs-term false
org.cinnamon.desktop.default-applications.terminal exec-arg '--'
org.cinnamon.desktop.default-applications.terminal exec 'gnome-terminal'
```

