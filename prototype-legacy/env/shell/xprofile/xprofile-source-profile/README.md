
# xprofile


## Config File Path

* [~/.xprofile](config/xprofile/.xprofile)



## Arch Package

* [filesystem](https://archlinux.org/packages/core/x86_64/filesystem/)
* [bash](https://archlinux.org/packages/core/x86_64/bash/)




## Arch Wiki

* Environment variables / [Using shell initialization files](https://wiki.archlinux.org/title/environment_variables#Using_shell_initialization_files)
* Environment variables / [Per Xorg session](https://wiki.archlinux.org/title/environment_variables#Per_Xorg_session)
* [xprofile](https://wiki.archlinux.org/title/Xprofile)
* [Bash](https://wiki.archlinux.org/title/Bash)
* [Command-line shell](https://wiki.archlinux.org/title/Command-line_shell)


## Note

> Environment variables / [Per Xorg session](https://wiki.archlinux.org/title/environment_variables#Per_Xorg_session)

```
* Most display managers source xprofile.

* SDDM additionally sources startup scripts for login shells, like ~/.bash_profile for bash or ~/.zprofile and ~/.zlogin for zsh.
```

> [xprofile](https://wiki.archlinux.org/title/Xprofile)


```
An xprofile file, ~/.xprofile and /etc/xprofile, allows you to execute commands at the beginning of the X user session - before the window manager is started.

The xprofile file is similar in style to xinitrc.
```

```
The xprofile files are natively sourced by the following display managers:

    GDM - /etc/gdm/Xsession
    LightDM - /etc/lightdm/Xsession
    LXDM - /etc/lxdm/Xsession
    SDDM - /usr/share/sddm/scripts/Xsession
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
