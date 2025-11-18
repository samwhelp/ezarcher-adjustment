

	<context name="Frame">

<!--

## clicksnap

### Link

* https://git.maboxlinux.org/napcok/clicksnap
* https://github.com/napcok/clicksnap
* Openbox Wiki / [Help:Bindings](http://openbox.org/wiki/Help:Bindings#Mouse_bindings)

### Requirements

* wmctrl
* xdotool
* xwininfo

### Install

``` sh
wget -c 'https://git.maboxlinux.org/napcok/clicksnap/raw/branch/master/clicksnap'
chmod 755 clicksnap

sudo cp clicksnap /usr/local/bin/clicksnap
```

## Mousebind

| Setting                                      | Mousebind                  |
| `<mousebind action="Press" button="S-Left">` | `Shift + Mouse Left Click` |
| `<mousebind action="Press" button="C-Left">` | `Ctrl + Mouse Left Click`  |
| `<mousebind action="Press" button="A-Left">` | `Alt + Mouse Left Click`   |
| `<mousebind action="Press" button="W-Left">` | `Win + Mouse Left Click`   |

* Openbox Wiki / Help:Bindings / [1.1.1.1 Modifiers](http://openbox.org/wiki/Help:Bindings#Modifiers)


//-->

		<!--
		<mousebind action="Press" button="A-Left">
			<action name="UnmaximizeFull"/>
			<action name="Execute">
				<command>clicksnap</command>
			</action>
		</mousebind>
		//-->

		<!--
		<mousebind action="Press" button="C-S-Left">
			<action name="UnmaximizeFull"/>
			<action name="Execute">
				<command>snapwin</command>
			</action>
		</mousebind>
		//-->

		<!--
		<mousebind action="Press" button="W-S-Left">
			<action name="UnmaximizeFull"/>
			<action name="Execute">
				<command>deskgrid</command>
			</action>
		</mousebind>
		//-->


		<mousebind button="W-Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
		</mousebind>

		<!--
		<mousebind button="W-Left" action="Click">
			<action name="Unshade"/>
		</mousebind>
		//-->

		<mousebind button="W-Left" action="Drag">
			<action name="if">
				<maximized>yes</maximized>
				<then>
					<action name="UnmaximizeFull"/>
					<action name="MoveResizeTo">
						<x>center</x>
						<y>current</y>
					</action>
					<action name="Move"/>
				</then>
				<else>
					<!-- <action name="UnmaximizeFull"/> //-->
					<action name="Move"/>
				</else>
			</action>
		</mousebind>

		<!--
		<mousebind button="W-Right" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="Unshade"/>
		</mousebind>
		//-->

		<mousebind button="W-Right" action="Drag">
			<!-- <action name="UnmaximizeFull"/> //-->
			<action name="Resize"/>
		</mousebind>

		<mousebind button="W-Middle" action="Press">
			<action name="Lower"/>
			<action name="FocusToBottom"/>
			<action name="Unfocus"/>
		</mousebind>



		<mousebind button="A-Up" action="Click">
			<action name="GoToDesktop">
				<to>previous</to>
			</action>
		</mousebind>

		<mousebind button="A-Down" action="Click">
			<action name="GoToDesktop">
				<to>next</to>
			</action>
		</mousebind>


		<mousebind button="W-A-Up" action="Click">
			<action name="SendToDesktop">
				<to>previous</to>
			</action>
		</mousebind>

		<mousebind button="W-A-Down" action="Click">
			<action name="SendToDesktop">
				<to>next</to>
			</action>
		</mousebind>




		<mousebind button="W-Left" action="DoubleClick">
			<action name="ToggleMaximize"/>
		</mousebind>

		<mousebind button="W-Middle" action="DoubleClick">
			<action name="ToggleDecorations"/>
		</mousebind>

		<mousebind button="W-Right" action="DoubleClick">
			<action name="ToggleFullscreen"/>
		</mousebind>


	</context>
