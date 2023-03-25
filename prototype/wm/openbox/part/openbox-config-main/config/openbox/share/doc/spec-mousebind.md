
# Openbox / Mousebind


## Subject


* [On Desktop](#on-desktop)
* [Go To Workspace](#go-to-workspace)
* [Send To Workspace](#send-to-workspace)
* [Window Move](#window-move)
* [Window Resize](#window-resize)
* [Window Toggle Maximize](#window-toggle-maximize)
* [Window Toggle Decorations](#window-toggle-decorations)
* [Window Toggle Fullscreen](#window-toggle-fullscreen)
* [Window Toggle Shade](#window-toggle-shade)
* [Window Show Client Menu](#window-show-client-menu)


## Link

* [spec-keybind](spec-keybind.md)


## Manual

* [Help:Configuration](http://openbox.org/wiki/Help:Configuration#Mouse)
* [Help:Bindings](http://openbox.org/wiki/Help:Bindings#Mouse_bindings)
* [Help:Actions](http://openbox.org/wiki/Help:Actions#ShowMenu)


## Config File

* [~/.config/openbox/rc.xml](../../rc.xml)

> Search `<mouse>`


## On Desktop

* Config Snippet / [Context Root](../gen/openbox-gen-rc/Section/Mousebind/Root.php)

| Button | Description | Doc |
| --- | --- | --- |
| `[Mouse Left Click]` | Toggle Show Desktop | [ToggleShowDesktop](http://openbox.org/wiki/Help:Actions#ToggleShowDesktop) |
| `[Mouse Middle Click]` | Toggle Show Workspace Menu (Window List) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-list-combined-menu) |
| `[Mouse Right Click]` | Toggle Show Root Menu | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |


## Go To Workspace

### On Desktop

* Config Snippet / [Context Desktop](../gen/openbox-gen-rc/Section/Mousebind/Desktop.php)

| Button | Description | Doc |
| --- | --- | --- |
| `[Mouse Middle Up]` | Go To Previous Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `[Mouse Middle Down]` | Go To Next Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


### On Desktop or On Frame

* Config Snippet / [Context Desktop](../gen/openbox-gen-rc/Section/Mousebind/Desktop.php)
* Config Snippet / [Context Frame](../gen/openbox-gen-rc/Section/Mousebind/Frame.php)

| Button | Description | Doc |
| --- | --- | --- |
| `Alt + [Mouse Middle Up]` | Go To Previous Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + [Mouse Middle Down]` | Go To Next Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


## Send To Workspace

* Config Snippet / [Context Frame](../gen/openbox-gen-rc/Section/Mousebind/Frame.php)

| Button | Description | Doc |
| --- | --- | --- |
| `Win + Alt + [Mouse Middle Up]` | Send To Previous Desktop | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + Alt + [Mouse Middle Down]` | Send To Next Desktop | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


## Window Move

### On Frame or On Titlebar

* Config Snippet / [Context Frame](../gen/openbox-gen-rc/Section/Mousebind/Frame.php)
* Config Snippet / [Context Titlebar](../gen/openbox-gen-rc/Section/Mousebind/Titlebar.php)

| Button | Description | Doc |
| --- | --- | --- |
| `Win + [Mouse Left Drag]` | Move Window | [Move](http://openbox.org/wiki/Help:Actions#Move) |


### On Titlebar

* Config Snippet / [Context Titlebar](../gen/openbox-gen-rc/Section/Mousebind/Titlebar.php)

| Button | Description | Doc |
| --- | --- | --- |
| `[Mouse Left Drag]` | Move Window | [Move](http://openbox.org/wiki/Help:Actions#Move) |


## Window Resize

### On Frame or On Titlebar

* Config Snippet / [Context Frame](../gen/openbox-gen-rc/Section/Mousebind/Frame.php)
* Config Snippet / [Context Titlebar](../gen/openbox-gen-rc/Section/Mousebind/Titlebar.php)

| Button | Description | Doc |
| --- | --- | --- |
| `Win + [Mouse Right Drag]` | Resize Window  | [Resize](http://openbox.org/wiki/Help:Actions#Resize) |


## Window Toggle Maximize

### On Frame

* Config Snippet / [Context Frame](../gen/openbox-gen-rc/Section/Mousebind/Frame.php)

| Button | Description | Doc |
| --- | --- | --- |
| `Win + [Mouse Left DoubleClick]` | Window Toggle Maximize | [ToggleMaximize](http://openbox.org/wiki/Help:Actions#ToggleMaximize) |

### On Titlebar

* Config Snippet / [Context Titlebar](../gen/openbox-gen-rc/Section/Mousebind/Titlebar.php)

| Button | Description | Doc |
| --- | --- | --- |
| `[Mouse Left Click]` | Window Toggle Maximize | [ToggleMaximize](http://openbox.org/wiki/Help:Actions#ToggleMaximize) |


## Window Toggle Decorations

### On Frame

* Config Snippet / [Context Frame](../gen/openbox-gen-rc/Section/Mousebind/Frame.php)

| Button | Description | Doc |
| --- | --- | --- |
| `Win + [Mouse Middle DoubleClick]` | Window Toggle Decorations | [ToggleDecorations](http://openbox.org/wiki/Help:Actions#ToggleDecorations) |


## Window Toggle Fullscreen

### On Frame

* Config Snippet / [Context Frame](../gen/openbox-gen-rc/Section/Mousebind/Frame.php)

| Button | Description | Doc |
| --- | --- | --- |
| `Win + [Mouse Right DoubleClick]` | Window Toggle Fullscreen | [ToggleFullscreen](http://openbox.org/wiki/Help:Actions#ToggleFullscreen) |


## Window Toggle Shade

### On Titlebar

* Config Snippet / [Context Titlebar](../gen/openbox-gen-rc/Section/Mousebind/Titlebar.php)

| Button | Description | Doc |
| --- | --- | --- |
| `[Mouse Middle Up]` | Window Shade | [Shade](http://openbox.org/wiki/Help:Actions#Shade) |
| `[Mouse Middle Down]` | Window Unshade | [Unshade](http://openbox.org/wiki/Help:Actions#Unshade) |


## Window Show Client Menu

### On Titlebar

* Config Snippet / [Context Titlebar](../gen/openbox-gen-rc/Section/Mousebind/Titlebar.php)

| Button | Description | Doc |
| --- | --- | --- |
| `[Mouse Right Click]` | Window Show Client Menu | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-menu) |




## Config Snippet

* [Context Root](../gen/openbox-gen-rc/Section/Mousebind/Root.php)
* [Context Desktop](../gen/openbox-gen-rc/Section/Mousebind/Desktop.php)
* [Context Frame](../gen/openbox-gen-rc/Section/Mousebind/Frame.php)
* [Context Client](../gen/openbox-gen-rc/Section/Mousebind/Client.php)
* [Context Titlebar](../gen/openbox-gen-rc/Section/Mousebind/Titlebar.php)
* [Context MoveResize](../gen/openbox-gen-rc/Section/Mousebind/MoveResize.php)
