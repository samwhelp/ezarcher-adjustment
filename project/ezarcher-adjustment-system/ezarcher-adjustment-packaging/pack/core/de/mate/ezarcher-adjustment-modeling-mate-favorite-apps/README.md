
# ezarcher-adjustment-modeling-mate-favorite-apps


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
pacman -Ql ezarcher-adjustment-modeling-mate-favorite-apps -q
```

show

```
/usr/
/usr/share/
/usr/share/glib-2.0/
/usr/share/glib-2.0/schemas/
/usr/share/glib-2.0/schemas/50_mate-favorite-apps.gschema.override
```

* [/usr/share/glib-2.0/schemas/50_mate-favorite-apps.gschema.override](asset/overlay/usr/share/glib-2.0/schemas/50_mate-favorite-apps.gschema.override)



## Explore

run

``` sh
gsettings list-recursively | grep org.mate.applications
```

show

```
org.mate.applications-at-mobility exec 'dasher'
org.mate.applications-at-mobility startup false
org.mate.applications-at-visual exec 'orca'
org.mate.applications-at-visual startup false
org.mate.applications-browser exec 'mozilla'
org.mate.applications-browser needs-term false
org.mate.applications-browser nremote true
org.mate.applications-calculator exec 'mate-calc'
org.mate.applications-messenger exec ''
org.mate.applications-office.calendar exec 'evolution'
org.mate.applications-office.calendar needs-term false
org.mate.applications-office.tasks exec 'evolution'
org.mate.applications-office.tasks needs-term false
org.mate.applications-terminal exec 'mate-terminal'
org.mate.applications-terminal exec-arg '-x'
```
