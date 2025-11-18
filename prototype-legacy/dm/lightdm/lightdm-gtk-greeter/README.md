
# lightdm-gtk-greeter


## Config File Path

* [/etc/lightdm/lightdm-gtk-greeter.conf](config/lightdm/lightdm-gtk-greeter/main/lightdm-gtk-greeter.conf)


## Arch Package

* [lightdm](https://archlinux.org/packages/extra/x86_64/lightdm/)
* [lightdm-gtk-greeter](https://archlinux.org/packages/extra/x86_64/lightdm-gtk-greeter/)
* [lightdm-gtk-greeter-settings](https://archlinux.org/packages/community/any/lightdm-gtk-greeter-settings/)


## Arch Manpage

* man [lightdm](https://man.archlinux.org/man/lightdm.1)


## Arch Wiki

* [LightDM](https://wiki.archlinux.org/title/LightDM)


## Reference

* Arch Wiki / [LightDM](https://wiki.archlinux.org/index.php/LightDM)
* Manjaro Wiki / Install Display Managers / [LightDM](https://wiki.manjaro.org/index.php/Install_Display_Managers#LightDM)


## GUI Tool

* lightdm-gtk-greeter-settings-pkexec (LightDM GTK+ Greeter settings) (/usr/share/applications/lightdm-gtk-greeter-settings.desktop)


## greeter-session

* [/etc/lightdm/lightdm.conf](config/lightdm/lightdm/lightdm.conf)

``` sh
greeter-session=lightdm-gtk-greeter
```


## Howto


### install

``` sh
$ ./install.sh
```

or

``` sh
$ make install
```


### package-install

``` sh
$ ./package-install.sh
```

or

``` sh
$ make package-install
```


### config-install

``` sh
$ ./config-install.sh
```

or

``` sh
$ make config-install
```
