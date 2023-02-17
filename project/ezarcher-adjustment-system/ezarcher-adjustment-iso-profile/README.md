

# ezarcher-adjustment-iso-profile


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


## ISO Build System

| ISO Build System |
| --- |
| [ezarcher-adjustment-packaging](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-packaging) |
| [ezarcher-adjustment-repository](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-repository) |
| [ezarcher-adjustment-iso-profile](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile) |


## Notice

```
Media current: stdio file, overwriteable
Media status : is blank
Media summary: 0 sessions, 0 data blocks, 0 data, 6570m free
xorriso : FAILURE : -volid: Text too long (39 > 32)
xorriso : aborting : -abort_on 'FAILURE' encountered 'FAILURE'
./steps.sh: Error on line 338: mkarchiso -v -w ./work -o ./out ./ezreleng
make: *** [Makefile:29: build] Error 5
```

profiledef.sh:  `iso_label=` too long

```
iso_label=
```
