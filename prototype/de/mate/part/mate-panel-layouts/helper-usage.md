

# Helper / mate-panel-layout-ctrl


## Note

> mate-panel-layout-ctrl-fzf depends on [fzf](https://archlinux.org/packages/community/x86_64/fzf/)

run to install [fzf](https://archlinux.org/packages/community/x86_64/fzf/)

``` sh
sudo pacman -Sy --needed fzf
```

or run

``` sh
yay -Sy --needed fzf
```

## Usage

| Helper | Usage |
| --- | --- |
| [mate-panel-layout-ctrl-list](config/mate-panel-layouts/mate-panel-layout-ctrl-list) | [usage](#mate-panel-layout-ctrl-list) |
| [mate-panel-layout-ctrl-set](config/mate-panel-layouts/mate-panel-layout-ctrl-set) | [usage](#mate-panel-layout-ctrl-set) |
| [mate-panel-layout-ctrl-get](config/mate-panel-layouts/mate-panel-layout-ctrl-get) | [usage](#mate-panel-layout-ctrl-get) |
| [mate-panel-layout-ctrl-fzf](config/mate-panel-layouts/mate-panel-layout-ctrl-fzf) | [usage](#mate-panel-layout-ctrl-fzf) |


## mate-panel-layout-ctrl-list

run

``` sh
mate-panel-layout-ctrl-list
```

show

```
brisk-menu-stand-alone-bottom
brisk-menu-stand-alone-top
classic-menu-stand-alone-bottom
classic-menu-stand-alone-top
default
fedora
linuxmint
mageia
opensuse
stand-alone-bottom
stand-alone-top
test-tweak
ubuntu
```


## mate-panel-layout-ctrl-set

run to switch layout [stand-alone-top](config/mate-panel-layouts/stand-alone-top.layout)

``` sh
mate-panel-layout-ctrl-set stand-alone-top
```

show

```
gsettings set org.mate.panel default-layout 'stand-alone-top'

dconf reset -f /org/mate/panel/general/object-id-list

dconf reset -f /org/mate/panel/general/object-id-list

exec mate-panel --replace &
```


## mate-panel-layout-ctrl-get

run

``` sh
mate-panel-layout-ctrl-get
```

show

```
stand-alone-top
```


## mate-panel-layout-ctrl-fzf

run

``` sh
mate-panel-layout-ctrl-fzf
```

diplay layout list

then select [brisk-menu-stand-alone-bottom](config/mate-panel-layouts/brisk-menu-stand-alone-bottom.layout)

would show

```
##
## Selected: brisk-menu-stand-alone-top
##


gsettings set org.mate.panel default-layout 'brisk-menu-stand-alone-top'

dconf reset -f /org/mate/panel/general/object-id-list

dconf reset -f /org/mate/panel/general/object-id-list

exec mate-panel --replace &

```
