
# ezarcher-adjustment-modeling-wallpaper-default


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
pacman -Ql ezarcher-adjustment-modeling-wallpaper-default -q
```

show

```
/usr/
/usr/share/
/usr/share/backgrounds/
/usr/share/backgrounds/default.jpg
```


* [/usr/share/backgrounds/default.jpg](asset/overlay/usr/share/backgrounds/default.jpg)

run

``` sh
file /usr/share/backgrounds/default.jpg
```

show

```
/usr/share/backgrounds/default.jpg: symbolic link to xfce/Butterfly.jpg
```


## Depends

run

``` sh
sudo pacman -Sy --needed xfce4-artwork
```

* [xfce4-artwork](https://archlinux.org/packages/extra/any/xfce4-artwork/)


## Explore

run

``` sh
pacman -Qo /usr/share/backgrounds/xfce/
```

show

```
/usr/share/backgrounds/xfce/ is owned by xfce4-artwork 0.1.1a_git20110420-6
/usr/share/backgrounds/xfce/ is owned by xfdesktop 4.16.0-2
```


run

``` sh
pacman -Qo /usr/share/backgrounds/xfce/ -q
```

show

```
xfce4-artwork
xfdesktop
```

* [xfce4-artwork](https://archlinux.org/packages/extra/any/xfce4-artwork/)
* [xfdesktop](https://archlinux.org/packages/extra/x86_64/xfdesktop/)


run

``` sh
pacman -Ql xfce4-artwork -q
````

show

```
/usr/
/usr/share/
/usr/share/backgrounds/
/usr/share/backgrounds/xfce/
/usr/share/backgrounds/xfce/Aquarius.svg
/usr/share/backgrounds/xfce/Butterfly.jpg
/usr/share/backgrounds/xfce/CleanBlue.jpg
/usr/share/backgrounds/xfce/Crow.jpg
/usr/share/backgrounds/xfce/Forrest.jpg
/usr/share/backgrounds/xfce/Klivia.jpg
/usr/share/backgrounds/xfce/Squirrel.jpg
/usr/share/backgrounds/xfce/Szarkakoi_fa.jpg
/usr/share/backgrounds/xfce/Valo_1.jpg
/usr/share/backgrounds/xfce/Violet.jpg
/usr/share/backgrounds/xfce/alone.jpg
/usr/share/backgrounds/xfce/cumberlandfalls2.jpg
/usr/share/backgrounds/xfce/dog-rose.jpg
/usr/share/backgrounds/xfce/firework.jpg
/usr/share/backgrounds/xfce/hippeastrum.jpg
/usr/share/backgrounds/xfce/kanttarelli.jpg
/usr/share/backgrounds/xfce/mgla_wiosenna.jpg
/usr/share/backgrounds/xfce/moon_venus.jpg
/usr/share/backgrounds/xfce/ohio-sky.jpg
/usr/share/backgrounds/xfce/ondasblue.jpg
/usr/share/backgrounds/xfce/opole-sky.jpg
/usr/share/backgrounds/xfce/paltanen.jpg
/usr/share/backgrounds/xfce/park.jpg
/usr/share/backgrounds/xfce/primulag.jpg
/usr/share/backgrounds/xfce/tipas.jpg
/usr/share/backgrounds/xfce/vect_or.jpg
/usr/share/backgrounds/xfce/xfce-evil.jpg
/usr/share/backgrounds/xfce/xfce-gradiented.png
/usr/share/backgrounds/xfce/xfce-transparent.png
```

run

``` sh
pacman -Ql xfdesktop -q | grep backgrounds
````

show

```
/usr/share/backgrounds/
/usr/share/backgrounds/xfce/
/usr/share/backgrounds/xfce/xfce-blue.jpg
/usr/share/backgrounds/xfce/xfce-stripes.png
/usr/share/backgrounds/xfce/xfce-teal.jpg
/usr/share/backgrounds/xfce/xfce-verticals.png
```

