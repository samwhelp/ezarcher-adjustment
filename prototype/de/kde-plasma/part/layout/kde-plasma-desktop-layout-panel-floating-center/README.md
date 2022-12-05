
# kde-plasma / Adjustment


## Note

run

``` sh
plasmashell --version
```

show

```
plasmashell 5.25.5
```

### AppletOrder

* [~/.config/plasma-org.kde.plasma.desktop-appletsrc](config/kde-plasma-desktop/skel/.config/plasma-org.kde.plasma.desktop-appletsrc#L113)


```
AppletOrder=3;4;5;6;7;20;21
```


```
AppletOrder=3;5;4;6;7;20;21
```


### Application Menu Launcher

* [~/.config/plasma-org.kde.plasma.desktop-appletsrc](config/kde-plasma-desktop/skel/.config/plasma-org.kde.plasma.desktop-appletsrc#L50)

```
[Containments][2][Applets][3]
plugin=org.kde.plasma.kickoff
```


### Panel Opacity

* [~/plasmashellrc](config/kde-plasma-desktop/skel/.config/plasmashellrc#L7)


```
[PlasmaViews][Panel 2]
panelOpacity=2
```


### Panel Floating

* [~/plasmashellrc](config/kde-plasma-desktop/skel/.config/plasmashellrc#L6)


```
[PlasmaViews][Panel 2]
floating=1
```

## Howto


### install

``` sh
$ ./install.sh
```

or

``` sh
$ make install
```


### package-install

``` sh
$ ./package-install.sh
```

or

``` sh
$ make package-install
```


### config-install

``` sh
$ ./config-install.sh
```

or

``` sh
$ make config-install
```
