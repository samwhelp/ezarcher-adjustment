

# Grub-Theme

* [Config File Path](#config-file-path)
* [Arch Package](#arch-package)
* [Usage](#usage)




## Grub Theme Source

| Grub Theme Source |
| ----------------- |
| [grub-theme-glass-remix](https://github.com/samwhelp/grub-theme-glass-remix) |




## Config File Path

| Config File Path |
| ---------------- |
| [/etc/default/grub.d/theme.cfg](./asset/overlay/etc/default/grub.d/theme.cfg) |

``` sh
GRUB_BACKGROUND="/boot/grub/themes/grub-theme-glass-remix/background.jpg"
GRUB_THEME="/boot/grub/themes/grub-theme-glass-remix/theme.txt"
```




## Arch Package

| Arch Package |
| ------------ |
| [grub2](https://archlinux.org/packages/core/x86_64/grub/) |




## Usage


### install

run

``` sh
./install.sh
```

or run

``` sh
make install
```


### package-install

run

``` sh
./package-install.sh
```

or run

``` sh
make package-install
```


### asset-install

run

``` sh
./asset-install.sh
```

or run

``` sh
make asset-install
```


### prototype-install

run

``` sh
./prototype-install.sh
```

or run

``` sh
make prototype-install
```


### config-install

run

``` sh
./config-install.sh
```

or run

``` sh
make config-install
```
