---
title: Prepare ISO Build System
nav_order: 1012
has_children: false
parent: Build ISO
grand_parent: Start
---


# Prepare ISO Build System


## Previous Step

> [Prepare ArchLinux](https://samwhelp.github.io/ezarcher-adjustment/read/start/build-iso/prepare-archlinux.html)


## Clone

run

``` sh
git clone https://github.com/samwhelp/ezarcher-adjustment.git
```

## Link

to [ezarcher-adjustment/project/ezarcher-adjustment-system](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system)

``` sh
cd ezarcher-adjustment/project/ezarcher-adjustment-system
```

then run

``` sh
./link.sh
```

show

``` sh
ezarcher-adjustment-iso-profile: symbolic link to /home/sam/Documents/ezarcher-adjustment/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile
ezarcher-adjustment-packaging:   symbolic link to /home/sam/Documents/ezarcher-adjustment/project/ezarcher-adjustment-system/ezarcher-adjustment-packaging
ezarcher-adjustment-repository:  symbolic link to /home/sam/Documents/ezarcher-adjustment/project/ezarcher-adjustment-system/ezarcher-adjustment-repository
```

three symbolic link

| ISO Build System |
| --- |
| [/opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-packaging](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-packaging) |
| [/opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-repository](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-repository) |
| [/opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-iso-profile](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile) |


## Next Step

> [Build Arch Package](https://samwhelp.github.io/ezarcher-adjustment/read/start/build-iso/build-package.html)
