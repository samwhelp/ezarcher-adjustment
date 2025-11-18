---
title: Update Package Repository DB
nav_order: 1014
has_children: false
parent: Build ISO
grand_parent: Start
---


# Update Package Repository Db


## Previous Step

> [Build Arch Package](https://samwhelp.github.io/ezarcher-adjustment/read/start/build-iso/build-package.html)


## To Work Dir

to [/opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-repository](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-repository)

``` sh
cd /opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-repository
```

## Prepare

install [base-devel](https://archlinux.org/groups/x86_64/base-devel/)

``` sh
sudo pacman -Sy --needed base-devel
```

or run

``` sh
make prepare
```

* Arch Wiki / [Meta package and package group](https://wiki.archlinux.org/title/Meta_package_and_package_group)


## DB Update

to Update Arch Package Repository DB

``` sh
make db-update
```


## Next Step

> [Build Arch ISO](https://samwhelp.github.io/ezarcher-adjustment/read/start/build-iso/build-iso.html)
