

# ezarcher-adjustment-repository

| ISO Build System |
| --- |
| [ezarcher-adjustment-packaging](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-packaging) |
| [ezarcher-adjustment-repository](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-repository) |
| [ezarcher-adjustment-iso-profile](https://github.com/samwhelp/ezarcher-adjustment/tree/main/project/ezarcher-adjustment-system/ezarcher-adjustment-iso-profile) |


## Use Remote

* /etc/pacman.conf

``` ini
[ezarcher-adjustment]
SigLevel = Optional TrustAll
Server = https://samwhelp.github.io/ezarcher-adjustment-repository/repo/main
```

run

``` sh
sudo pacman -Sy
```

run

``` sh
sudo pacman -S ezarcher-adjustment-hello
```


## Use Local

run to clone

``` sh
sudo mkdir -p /opt/ezarcher-adjustment/
sudo chmod 777 /opt/ezarcher-adjustment/
git clone https://github.com/samwhelp/ezarcher-adjustment.git

mkdir -p /opt/ezarcher-adjustment/iso-build-system
cp ./ezarcher-adjustment/iso-build-system/. /opt/ezarcher-adjustment/iso-build-system
```


* /etc/pacman.conf

``` ini
[ezarcher-adjustment]
SigLevel = Optional TrustAll
Server = file:///opt/ezarcher-adjustment/iso-build-system/ezarcher-adjustment-repository/repo/main
```


run

``` sh
sudo pacman -Sy
```

run

``` sh
sudo pacman -S ezarcher-adjustment-hello
```


## Use Include

* [/etc/pacman.d/ezarcher-adjustment-mirrorlist](https://github.com/samwhelp/ezarcher-adjustment/blob/main/ezarcher-adjustment-packaging/pack/base/ezarcher-adjustment-mirrorlist/asset/etc/pacman.d/ezarcher-adjustment-mirrorlist)

```
Server = file:///opt/ezarcher-adjustment/iso-build/system/ezarcher-adjustment-repository/repo/main
```

* /etc/pacman.conf

``` ini
[ezarcher-adjustment]
SigLevel = Optional TrustAll
Include = /etc/pacman.d/ezarcher-adjustment-mirrorlist
```

run

``` sh
sudo pacman -Sy
```

run

``` sh
sudo pacman -S ezarcher-adjustment-hello
```


## list ezarcher-adjustment

``` sh
pacman -Sl ezarcher-adjustment
```

