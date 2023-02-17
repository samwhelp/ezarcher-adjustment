---
title: Build Package
nav_order: 1013
has_children: false
parent: Build ISO
grand_parent: Start
---


# Build Package


## Previous Step

> [Prepare ISO Build System](https://samwhelp.github.io/ezarcher-adjustment/read/start/build-iso/prepare-iso-build-system.html)


## To Work Dir

to [/opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-packaging](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-packaging)

``` sh
cd /opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-packaging
```


## Prepare

to install [base-devel](https://archlinux.org/groups/x86_64/base-devel/)

``` sh
sudo pacman -Sy --needed base-devel
```

or run

``` sh
make prepare
```


## Build

to packaging all the package.

``` sh
make build
```


## Next Step

> [Update Arch Package Repository DB](https://samwhelp.github.io/ezarcher-adjustment/read/start/build-iso/update-package-repository-db.html)
