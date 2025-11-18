

# Helper / gnome-panel-layout-ctrl


## Note

> gnome-panel-layout-ctrl-fzf depends on [fzf](https://archlinux.org/packages/community/x86_64/fzf/)

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
| [gnome-panel-layout-ctrl-list](config/gnome-panel-layouts/gnome-panel-layout-ctrl-list) | [usage](#gnome-panel-layout-ctrl-list) |
| [gnome-panel-layout-ctrl-set](config/gnome-panel-layouts/gnome-panel-layout-ctrl-set) | [usage](#gnome-panel-layout-ctrl-set) |
| [gnome-panel-layout-ctrl-get](config/gnome-panel-layouts/gnome-panel-layout-ctrl-get) | [usage](#gnome-panel-layout-ctrl-get) |
| [gnome-panel-layout-ctrl-fzf](config/gnome-panel-layouts/gnome-panel-layout-ctrl-fzf) | [usage](#gnome-panel-layout-ctrl-fzf) |


## gnome-panel-layout-ctrl-list

run

``` sh
gnome-panel-layout-ctrl-list
```

show

```
default
gnome-flashback
location-taipei
sample-default
sample-gnome-flashback
show-workspace-name
stand-alone-bottom
stand-alone-top
```


## gnome-panel-layout-ctrl-set

run to switch layout [stand-alone-top](config/gnome-panel-layouts/stand-alone-top.layout)

``` sh
gnome-panel-layout-ctrl-set stand-alone-top
```

show

```

dconf reset -f /org/gnome/gnome-panel/

gsettings set org.gnome.gnome-panel.general default-layout 'stand-alone-top'

exec gnome-panel --replace &


```


## gnome-panel-layout-ctrl-get

run

``` sh
gnome-panel-layout-ctrl-get
```

show

```
stand-alone-top
```


## gnome-panel-layout-ctrl-fzf

run

``` sh
gnome-panel-layout-ctrl-fzf
```

diplay layout list

then select [location-taipei](config/gnome-panel-layouts/location-taipei.layout)

would show

```

##
## Selected: location-taipei
##


dconf reset -f /org/gnome/gnome-panel/

gsettings set org.gnome.gnome-panel.general default-layout 'location-taipei'

exec gnome-panel --replace &


```
