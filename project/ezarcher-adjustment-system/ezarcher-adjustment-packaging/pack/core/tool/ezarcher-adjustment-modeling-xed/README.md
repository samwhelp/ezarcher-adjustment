
# ezarcher-adjustment-modeling-xed


## Reference

* https://wiki.archlinux.org/title/Creating_packages
* https://wiki.archlinux.org/title/Arch_User_Repository
* https://archlinux.org/groups/x86_64/base-devel/
* https://wiki.archlinux.org/title/pacman
* https://wiki.archlinux.org/title/makepkg
* https://wiki.archlinux.org/title/PKGBUILD
* https://wiki.archlinux.org/title/Arch_package_guideline


## File List

run

``` sh
pacman -Ql ezarcher-adjustment-modeling-xed -q
```

show

```
/usr/
/usr/share/
/usr/share/glib-2.0/
/usr/share/glib-2.0/schemas/
/usr/share/glib-2.0/schemas/50_xed.gschema.override
```







## Todo

install hook

``` sh
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
```

## Note

run

``` sh
dconf dump /org/x/editor/
```

show

```
[plugins]
active-plugins=['filebrowser', 'joinlines', 'spell', 'docinfo', 'open-uri-context-menu', 'sort', 'time', 'modelines', 'bracketcompletion', 'textsize']

[plugins/filebrowser]
terminal-command='sakura'

[plugins/filebrowser/on-load]
root='file:///'
tree-view=true
virtual-root='file:///home/sam'

[preferences/editor]
display-line-numbers=true
display-right-margin=true
draw-whitespace=true
draw-whitespace-inside=true
draw-whitespace-leading=true
draw-whitespace-newline=true
draw-whitespace-trailing=true
editor-font='Monospace 14'
ensure-trailing-newline=true
highlight-current-line=true
insert-spaces=false
prefer-dark-theme=true
right-margin-position=uint32 80
scheme='oblivion'
tabs-size=uint32 4
use-default-font=false

[preferences/ui]
side-panel-visible=true
statusbar-visible=true

[state/window]
bottom-panel-size=140
side-panel-active-page=-1970755255
side-panel-size=200
size=(650, 500)
state=132
```

them replace `/` to `.`

and save to file `50_xed.gschema.override`

then put to path `/usr/share/glib-2.0/schemas/50_xed.gschema.override`

``` sh
sudo install -Dm644 50_xed.gschema.override /usr/share/glib-2.0/schemas/50_xed.gschema.override
```

then compile glib schemas

``` sh
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
```

then dump all xed gsettings

``` sh
gsettings list-recursively | grep org.x.editor | sort
```

show

```
org.x.editor.plugins active-plugins ['filebrowser', 'joinlines', 'spell', 'docinfo', 'open-uri-context-menu', 'sort', 'time', 'modelines', 'bracketcompletion', 'textsize']
org.x.editor.plugins.filebrowser filter-mode 'hidden_and_binary'
org.x.editor.plugins.filebrowser filter-pattern ''
org.x.editor.plugins.filebrowser.on-load enable-remote false
org.x.editor.plugins.filebrowser.on-load root 'file:///'
org.x.editor.plugins.filebrowser.on-load tree-view true
org.x.editor.plugins.filebrowser.on-load virtual-root 'file:///home/sam'
org.x.editor.plugins.filebrowser open-at-first-doc true
org.x.editor.plugins.filebrowser terminal-command 'sakura'
org.x.editor.plugins.spell autocheck-type 'document'
org.x.editor.plugins.time custom-format '%d/%m/%Y %H:%M:%S'
org.x.editor.plugins.time prompt-type 'prompt-selected-format'
org.x.editor.plugins.time selected-format '%c'
org.x.editor.plugins.wordcompletion interactive-completion true
org.x.editor.plugins.wordcompletion minimum-word-size uint32 2
org.x.editor.preferences.editor auto-indent false
org.x.editor.preferences.editor auto-save false
org.x.editor.preferences.editor auto-save-interval uint32 10
org.x.editor.preferences.editor bracket-matching false
org.x.editor.preferences.editor create-backup-copy false
org.x.editor.preferences.editor display-line-numbers true
org.x.editor.preferences.editor display-right-margin true
org.x.editor.preferences.editor draw-whitespace-inside true
org.x.editor.preferences.editor draw-whitespace-leading true
org.x.editor.preferences.editor draw-whitespace-newline true
org.x.editor.preferences.editor draw-whitespace-trailing true
org.x.editor.preferences.editor draw-whitespace true
org.x.editor.preferences.editor editor-font 'Monospace 14'
org.x.editor.preferences.editor ensure-trailing-newline true
org.x.editor.preferences.editor highlight-current-line true
org.x.editor.preferences.editor insert-spaces false
org.x.editor.preferences.editor max-undo-actions 2000
org.x.editor.preferences.editor prefer-dark-theme true
org.x.editor.preferences.editor restore-cursor-position true
org.x.editor.preferences.editor right-margin-position uint32 80
org.x.editor.preferences.editor scheme 'oblivion'
org.x.editor.preferences.editor search-highlighting true
org.x.editor.preferences.editor smart-home-end 'after'
org.x.editor.preferences.editor syntax-highlighting true
org.x.editor.preferences.editor tabs-size uint32 4
org.x.editor.preferences.editor use-default-font false
org.x.editor.preferences.editor wrap-mode 'word'
org.x.editor.preferences.editor writable-vfs-schemes ['dav', 'davs', 'ftp', 'sftp', 'smb', 'ssh']
org.x.editor.preferences.encodings auto-detected ['UTF-8', 'CURRENT', 'ISO-8859-15', 'UTF-16']
org.x.editor.preferences.encodings shown-in-menu ['ISO-8859-15']
org.x.editor.preferences.print print-font-body-pango 'Monospace 9'
org.x.editor.preferences.print print-font-header-pango 'Sans 11'
org.x.editor.preferences.print print-font-numbers-pango 'Sans 8'
org.x.editor.preferences.print print-header true
org.x.editor.preferences.print print-line-numbers uint32 0
org.x.editor.preferences.print print-syntax-highlighting true
org.x.editor.preferences.print print-wrap-mode 'word'
org.x.editor.preferences.ui bottom-panel-visible false
org.x.editor.preferences.ui enable-tab-scrolling true
org.x.editor.preferences.ui max-recents uint32 5
org.x.editor.preferences.ui menubar-visible true
org.x.editor.preferences.ui minimap-visible false
org.x.editor.preferences.ui side-panel-visible true
org.x.editor.preferences.ui statusbar-visible true
org.x.editor.preferences.ui toolbar-visible true
org.x.editor.state.file-filter filter-id 0
org.x.editor.state.history-entry history-replace-with @as []
org.x.editor.state.history-entry history-search-for @as []
org.x.editor.state.window bottom-panel-active-page 0
org.x.editor.state.window bottom-panel-size 140
org.x.editor.state.window side-panel-active-page -1970755255
org.x.editor.state.window side-panel-size 200
org.x.editor.state.window size (650, 500)
org.x.editor.state.window state 132
```

try `org.xfce.xed.preferences.view color-scheme`

### set

``` sh
gsettings get org.x.editor.preferences.editor scheme
```

show

```
'tango'
```

run

``` sh
gsettings set org.x.editor.preferences.editor scheme 'oblivion'
```

run

``` sh
gsettings get org.x.editor.preferences.editor scheme
```

show

```
'oblivion'
```

### reset

run

``` sh
gsettings reset org.x.editor.preferences.editor scheme
```

run

``` sh
gsettings get org.x.editor.preferences.editor scheme
```

show

```
'tango'
```



## explore


run

``` sh
pacman -Ql xed -q | grep schemas
```

show

```
/usr/share/glib-2.0/schemas/
/usr/share/glib-2.0/schemas/org.x.editor.gschema.xml
/usr/share/glib-2.0/schemas/org.x.editor.plugins.filebrowser.gschema.xml
/usr/share/glib-2.0/schemas/org.x.editor.plugins.spell.gschema.xml
/usr/share/glib-2.0/schemas/org.x.editor.plugins.time.gschema.xml
/usr/share/glib-2.0/schemas/org.x.editor.plugins.wordcompletion.gschema.xml
```

run

``` sh
grep 'scheme' /usr/share/glib-2.0/schemas/org.x.editor.gschema.xml -A 5
```

show

```
    <key name="scheme" type="s">
      <default>'tango'</default>
      <summary>Style Scheme</summary>
      <description>The ID of a GtkSourceView Style Scheme used to color the text.</description>
    </key>

```

run

``` sh
grep 'scheme' /usr/share/glib-2.0/schemas/50_xed.gschema.override
```

show

```
scheme='oblivion'
```

### gtksourceview

* https://draculatheme.com/xed
* https://github.com/dracula/xed


run

``` sh
pamac search gtksourceview
```

show

```
yaru-gtksourceview-theme                    21.10.1-1               chaotic-aur 
    Yaru default ubuntu gtksourceview theme
gtksourceviewmm-docs                        1:3.18.0-5              community 
    Developer documentation for
    gtksourceviewmm
gtksourceviewmm                             1:3.18.0-5              community 
    C++ bindings for the gtksourceview
    library
gtksourceview5                              5.2.0-1                 chaotic-aur 
    A text widget adding syntax
    highlighting and more to GNOME
gtksourceview4                  [Installed] 4.8.2-1                 extra 
    A text widget adding syntax
    highlighting and more to GNOME
gtksourceview3                  [Installed] 3.24.11+28+g73e57b57-1  extra 
    A text widget adding syntax
    highlighting and more to GNOME
```

run

``` sh
pacman -Ql gtksourceview3 | grep styles
```

show

```
gtksourceview3 /usr/include/gtksourceview-3.0/gtksourceview/gtksourcestylescheme.h
gtksourceview3 /usr/include/gtksourceview-3.0/gtksourceview/gtksourcestyleschemechooser.h
gtksourceview3 /usr/include/gtksourceview-3.0/gtksourceview/gtksourcestyleschemechooserbutton.h
gtksourceview3 /usr/include/gtksourceview-3.0/gtksourceview/gtksourcestyleschemechooserwidget.h
gtksourceview3 /usr/include/gtksourceview-3.0/gtksourceview/gtksourcestyleschememanager.h
gtksourceview3 /usr/share/gtksourceview-3.0/styles/
gtksourceview3 /usr/share/gtksourceview-3.0/styles/classic.xml
gtksourceview3 /usr/share/gtksourceview-3.0/styles/cobalt.xml
gtksourceview3 /usr/share/gtksourceview-3.0/styles/kate.xml
gtksourceview3 /usr/share/gtksourceview-3.0/styles/oblivion.xml
gtksourceview3 /usr/share/gtksourceview-3.0/styles/solarized-dark.xml
gtksourceview3 /usr/share/gtksourceview-3.0/styles/solarized-light.xml
gtksourceview3 /usr/share/gtksourceview-3.0/styles/styles.rng
gtksourceview3 /usr/share/gtksourceview-3.0/styles/tango.xml
```

run

``` sh
ls -1 /usr/share/gtksourceview-3.0/styles/
``

show

```
classic.xml
cobalt.xml
kate.xml
oblivion.xml
solarized-dark.xml
solarized-light.xml
styles.rng
tango.xml
```







## Reference

* https://wiki.archlinux.org/title/Creating_packages
* https://wiki.archlinux.org/title/Arch_User_Repository
* https://archlinux.org/groups/x86_64/base-devel/
* https://wiki.archlinux.org/title/pacman
* https://wiki.archlinux.org/title/makepkg
* https://wiki.archlinux.org/title/PKGBUILD
* https://wiki.archlinux.org/title/Arch_package_guidelines
