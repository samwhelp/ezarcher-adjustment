

# profile-switch


## help

run

``` sh
make
```

or run

```
make help
```

show

```
Usage:
	$ make [action]

Ex:
	$ make
	$ make help

	$ make profile-start

	$ make profile-basic

	$ make profile-wall		## (profile-wall-ring-shift-switcher)

	$ make profile-wall-ring-shift-switcher

	$ make profile-wall-ring-switcher-shift

	$ make profile-wall-ring-switcher-staticswitcher

	$ make profile-wall-shift-ring-switcher

	$ make profile-wall-shift-switcher-ring

	$ make profile-wall-shift-switcher-staticswitcher

	$ make profile-cube		## (profile-cube-ring-shift-switcher)

	$ make profile-cube-ring-shift-switcher

	$ make profile-cube-ring-switcher-shift

	$ make profile-cube-ring-switcher-staticswitcher

	$ make profile-cube-shift-ring-switcher

	$ make profile-cube-shift-switcher-ring

	$ make profile-cube-shift-switcher-staticswitcher

	$ make retart

```

## Profiles

| basic profile |
| --- |
| [start](config/start.ini) |
| [basic](config/basic.ini) |


| wall profile |
| --- |
| [wall-ring-shift-switcher](config/wall-ring-shift-switcher.ini) |
| [wall-ring-switcher-shift](config/wall-ring-switcher-shift.ini) |
| [wall-ring-switcher-staticswitcher](config/wall-ring-switcher-staticswitcher.ini) |
| [wall-shift-ring-switcher](config/wall-shift-ring-switcher.ini) |
| [wall-shift-switcher-ring](config/wall-shift-switcher-ring.ini) |
| [wall-shift-switcher-staticswitcher](config/wall-shift-switcher-staticswitcher.ini) |


| cube profile |
| --- |
| [cube-ring-shift-switcher](config/cube-ring-shift-switcher.ini) |
| [cube-ring-switcher-shift](config/cube-ring-switcher-shift.ini) |
| [cube-ring-switcher-staticswitcher](config/cube-ring-switcher-staticswitcher.ini) |
| [cube-shift-ring-switcher](config/cube-shift-ring-switcher.ini) |
| [cube-shift-switcher-ring](config/cube-shift-switcher-ring.ini) |
| [cube-shift-switcher-staticswitcher](config/cube-shift-switcher-staticswitcher.ini) |


## Mean

| Workspace Switcher |
| ------------------ |
| wall               |
| cube               |


| Window Switcher |
| --------------- |
| ring            |
| shift           |
| switcher        |
| staticswitcher  |


> Ex: `cube-ring-shift-switcher`

| Item     | Column 1              | Column 2              | Column 3         | Column 4                   |
| -------  | --------------------- | --------------------- | ---------------- | -------------------------- |
| Subject  | workspace             | window                | window           | window                     |
| Switcher | cube                  | ring                  | shift            | switcher                   |
| Keybind  | `Alt + grave_Tab_a_s` | `Win + grave_Tab_a_s` | `Win + k_j_h_l`  | `Win + Up_Down_Left_Right` |


## Direction Key

| Key   | Key | Key   |
| ----- | --- | ----- |
| Up    | k   | grave |
| Down  | j   | Tab   |
| Left  | h   | a     |
| Right | l   | s     |

> grave means ` (~)


## Modifier key

| Key   | Alias | Alias | Alias |
| ----- | ----- | ----- | ----- |
| Alt   | Mod1  |       |       |
| Win   | Mod4  | Super | Meta  |
| Ctrl  |       |       |       |
| Shift |       |       |       |
