

# Fcitx5

* [Config File Path](#config-file-path)
* [Arch Package](#arch-package)
* [Usage](#usage)




## Arch Wiki

* [Fcitx5](https://wiki.archlinux.org/title/Fcitx5)
* [Fcitx5](https://wiki.archlinuxcn.org/zh-tw/Fcitx5)



## Config File Path


### fcitx5

| Config File Path |
| ---------------- |
| [~/.config/fcitx5/profile](./asset/overlay/etc/skel/.config/fcitx5/profile) |
| [~/.config/fcitx5/config](./asset/overlay/etc/skel/.config/fcitx5/config) |
| [~/.config/fcitx5/conf/classicui.conf](./asset/overlay/etc/skel/.config/fcitx5/conf/classicui.conf) |
| [~/.config/fcitx5/conf/chewing.conf](./asset/overlay/etc/skel/.config/fcitx5/conf/chewing.conf) |


### Environment Variables

* [Fcitx5](https://wiki.archlinuxcn.org/zh-tw/Fcitx5)

| Config File Path |
| ---------------- |
| /etc/environment |

``` sh
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
SDL_IM_MODULE=fcitx
INPUT_METHOD=fcitx
GLFW_IM_MODULE=ibus
```

or

| Config File Path |
| ---------------- |
| [/etc/profile.d/input-method.sh](./asset/overlay/etc/profile.d/input-method.sh) |

``` sh
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export INPUT_METHOD=fcitx
export GLFW_IM_MODULE=ibus
```




## Arch Package Group

| Arch Package Group |
| ------------------ |
| [fcitx5-im](https://archlinux.org/groups/x86_64/fcitx5-im/) |


## Arch Package

| Arch Package |
| ------------ |
| [fcitx5](https://archlinux.org/packages/extra/x86_64/fcitx5/) |
| [fcitx5-configtool](https://archlinux.org/packages/extra/x86_64/fcitx5-configtool/) |
| [fcitx5-gtk](https://archlinux.org/packages/extra/x86_64/fcitx5-gtk/) |
| [fcitx5-qt](https://archlinux.org/packages/extra/x86_64/fcitx5-qt/) |
| [fcitx5-chewing](https://archlinux.org/packages/extra/x86_64/fcitx5-chewing/) |


| Arch Package |
| ------------ |
| [fcitx5-chinese-addons](https://archlinux.org/packages/extra/x86_64/fcitx5-chinese-addons/) |
| [fcitx5-table-extra](https://archlinux.org/packages/extra/any/fcitx5-table-extra/) |
| [fcitx5-table-other](https://archlinux.org/packages/extra/any/fcitx5-table-other/) |


| Arch Package |
| ------------ |
| [fcitx5-m17n](https://archlinux.org/packages/extra/x86_64/fcitx5-m17n/) |


| Arch Package |
| ------------ |
| [fcitx5-bamboo](https://archlinux.org/packages/extra/x86_64/fcitx5-bamboo/) |


| Arch Package |
| ------------ |
| [fcitx5-pinyin-zhwiki](https://archlinux.org/packages/extra/any/fcitx5-pinyin-zhwiki/) |


| Arch Package |
| ------------ |
| [fcitx5-rime](https://archlinux.org/packages/extra/x86_64/fcitx5-rime/) |


| Arch Package |
| ------------ |
| [fcitx5-mozc](https://archlinux.org/packages/extra/x86_64/fcitx5-mozc/) |


| Arch Package |
| ------------ |
| [fcitx5-anthy](https://archlinux.org/packages/extra/x86_64/fcitx5-anthy/) |
| [fcitx5-skk](https://archlinux.org/packages/extra/x86_64/fcitx5-skk/) |
| [fcitx5-kkc](https://archlinux.org/packages/extra/x86_64/fcitx5-kkc/) |





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


### config-install

run

``` sh
./config-install.sh
```

or run

``` sh
make config-install
```
