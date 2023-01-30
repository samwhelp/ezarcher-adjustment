
# ezarcher-adjustment-modeling-mate-panel-layouts


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
pacman -Ql ezarcher-adjustment-modeling-mate-panel-layouts -q
```

show

```
/usr/
/usr/share/
/usr/share/mate-panel/
/usr/share/mate-panel/layouts/
/usr/share/mate-panel/layouts/brisk-menu-stand-alone-bottom.dock
/usr/share/mate-panel/layouts/brisk-menu-stand-alone-bottom.layout
/usr/share/mate-panel/layouts/brisk-menu-stand-alone-top.dock
/usr/share/mate-panel/layouts/brisk-menu-stand-alone-top.layout
/usr/share/mate-panel/layouts/classic-menu-stand-alone-bottom.dock
/usr/share/mate-panel/layouts/classic-menu-stand-alone-bottom.layout
/usr/share/mate-panel/layouts/classic-menu-stand-alone-top.dock
/usr/share/mate-panel/layouts/classic-menu-stand-alone-top.layout
/usr/share/mate-panel/layouts/mate-menu-stand-alone-bottom.dock
/usr/share/mate-panel/layouts/mate-menu-stand-alone-bottom.layout
/usr/share/mate-panel/layouts/mate-menu-stand-alone-top.dock
/usr/share/mate-panel/layouts/mate-menu-stand-alone-top.layout
/usr/share/mate-panel/layouts/stand-alone-bottom.dock
/usr/share/mate-panel/layouts/stand-alone-bottom.layout
/usr/share/mate-panel/layouts/stand-alone-top.dock
/usr/share/mate-panel/layouts/stand-alone-top.layout
```


* [/usr/share/mate-panel/layouts/stand-alone-top.layout](asset/overlay/usr/share/mate-panel/layouts/stand-alone-top.layout)
* [/usr/share/mate-panel/layouts/stand-alone-bottom.layout](asset/overlay/usr/share/mate-panel/layouts/stand-alone-bottom.layout)
* [/usr/share/mate-panel/layouts/classic-stand-alone-top.layout](asset/overlay/usr/share/mate-panel/layouts/classic-stand-alone-top.layout)
* [/usr/share/mate-panel/layouts/classic-stand-alone-bottom.layout](asset/overlay/usr/share/mate-panel/layouts/classic-stand-alone-bottom.layout)
* [/usr/share/mate-panel/layouts/brisk-stand-alone-top.layout](asset/overlay/usr/share/mate-panel/layouts/brisk-stand-alone-top.layout)
* [/usr/share/mate-panel/layouts/brisk-stand-alone-bottom.layout](asset/overlay/usr/share/mate-panel/layouts/brisk-stand-alone-bottom.layout)
* [/usr/share/mate-panel/layouts/mate-stand-alone-top.layout](asset/overlay/usr/share/mate-panel/layouts/mate-stand-alone-top.layout)
* [/usr/share/mate-panel/layouts/mate-stand-alone-bottom.layout](asset/overlay/usr/share/mate-panel/layouts/mate-stand-alone-bottom.layout)


## Note

> brisk-menu-stand-alone-bottom.layout and brisk-menu-stand-alone-top.layout depends on [brisk-menu](https://aur.archlinux.org/packages/brisk-menu) ([source](https://github.com/getsolus/brisk-menu))

run to install [brisk-menu](https://aur.archlinux.org/packages/brisk-menu)

``` sh
yay -S brisk-menu
```


> mate-menu-stand-alone-bottom.layout and mate-menu-stand-alone-top.layout depends on [mate-menu](https://aur.archlinux.org/packages/mate-menu) ([source](https://github.com/ubuntu-mate/mate-menu))

run to install [mate-menu](https://aur.archlinux.org/packages/mate-menu)

``` sh
yay -S mate-menu
```
