---
title: Build Ezarcher Adjustment ISO
nav_order: 1015
has_children: false
parent: Build ISO
grand_parent: Start
---


# Build Ezarcher Adjustment ISO


## Previous Step

> [Update Arch Package Repository DB](https://samwhelp.github.io/ezarcher-adjustment/read/start/build-iso/update-package-repository-db.html)


## Template

| ISO Build Templates |
| --- |
| [Xfce](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/adjust/Templates/Xfce-20221030) |
| [Mate](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/adjust/Templates/Mate-20221030) |
| [Cinnamon](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/adjust/Templates/Cinn-20221030) |
| [GNOME Shell](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/adjust/Templates/Gnome-20221030) |
| [KDE Plasma](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/adjust/Templates/KDE-20221030) |
| [Lxqt](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/adjust/Templates/Lxqt-20221030) |


| ISO Build Templates |
| --- |
| [Openbox](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/derive/Templates/Openbox-20221030) |
| [GnomeFlashback](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/derive/Templates/GnomeFlashback-20221030) |


| ISO Build Templates |
| --- |
| [MateCompiz](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/alternative/Templates/Mate/MateCompiz-20221030) |
| [MateOpenbox](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/alternative/Templates/Mate/MateOpenbox-20221030) |
| [GnomeFlashbackCompiz](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/alternative/Templates/GnomeFlashback/GnomeFlashbackCompiz-20221030) |
| [GnomeFlashbackOpenbox](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/alternative/Templates/GnomeFlashback/GnomeFlashbackOpenbox-20221030) |
| [XfceCompiz](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/alternative/Templates/Xfce/XfceCompiz-20221030) |


## To Work Dir

For example, build 「[Xfce](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/adjust/Templates/Xfce-20221030)」，

to [/opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/adjust/Templates/Xfce-20221030/](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/adjust/Templates/Xfce-20221030)

``` sh
cd /opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-iso-profile/recipe/template/20221030/adjust/Templates/Xfce-20221030/
```


## Prepare

install [archiso](https://archlinux.org/packages/extra/any/archiso/)

``` sh
sudo pacman -Sy --needed archiso
```

* Arch Wiki / [Archiso](https://wiki.archlinux.org/title/archiso)


## Build

run

``` sh
make build
```

iso file would put on directory [out]


## Next Step

> How to Boot ISO

| How to Boot ISO |
| --- |
| [Boot ISO By USB ](https://samwhelp.github.io/note-about-archlinux/read/start/download/boot_iso_by_usb.html) |
| [Boot ISO By Ventoy](https://samwhelp.github.io/note-about-archlinux/read/start/download/boot_iso_by_ventoy.html) |
| [Boot ISO By Grub](https://samwhelp.github.io/note-about-archlinux/read/start/download/boot_iso_by_grub.html) |
| Boot ISO By Virtual Machine - like: Virtualbox, QEMU |
