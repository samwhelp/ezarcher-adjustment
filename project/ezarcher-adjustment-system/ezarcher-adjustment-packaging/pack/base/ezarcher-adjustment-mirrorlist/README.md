
# ezarcher-adjustment-mirrorlist

Config File Path: `/etc/pacman.conf`

``` ini
[ezarcher-adjustment]
SigLevel = Optional TrustAll
Include = /etc/pacman.d/ezarcher-adjustment-mirrorlist
```


``` ini
################################################################################
### Head: Ezarcher Adjustment
##

##
## Ezarcher Adjustment Repository
##

[ezarcher-adjustment]
SigLevel = Optional TrustAll
Include = /etc/pacman.d/ezarcher-adjustment-mirrorlist
#Server = file:///opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-repository/repo/main


##
### Tail: Ezarcher Adjustment
################################################################################
```



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
pacman -Ql ezarcher-adjustment-mirrorlist -q
```

show

```
/etc/
/etc/pacman.d/
/etc/pacman.d/ezarcher-adjustment-mirrorlist
```


* [/etc/pacman.d/ezarcher-adjustment-mirrorlist](asset/overlay/etc/pacman.d/ezarcher-adjustment-mirrorlist)
