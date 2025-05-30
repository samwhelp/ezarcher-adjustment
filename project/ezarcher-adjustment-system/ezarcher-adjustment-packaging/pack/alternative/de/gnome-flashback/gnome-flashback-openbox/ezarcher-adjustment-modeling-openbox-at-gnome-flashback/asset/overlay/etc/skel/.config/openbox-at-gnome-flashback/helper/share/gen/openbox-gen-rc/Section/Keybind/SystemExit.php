

	<!-- ## Shutdown //-->
	<keybind key="A-S-z">
		<action name="Execute">
			<startupnotify>
				<enabled>true</enabled>
				<name>Shutdown</name>
			</startupnotify>
			<command>gnome-session-quit --power-off</command>
		</action>
	</keybind>

<?php
/*
	<keybind key="A-S-z">
		<action name="Execute">
			<startupnotify>
				<enabled>true</enabled>
				<name>Exit</name>
			</startupnotify>
			<command>obsession-logout</command>
		</action>
	</keybind>


	<keybind key="A-S-z">
		<action name="Restart" />
	</keybind>
*/
?>


	<!-- ## Logout //-->
	<keybind key="A-S-x">
		<action name="Execute">
			<startupnotify>
				<enabled>true</enabled>
				<name>Logout</name>
			</startupnotify>
			<command>gnome-session-quit --logout</command>
		</action>
	</keybind>

	<keybind key="A-C-x">
		<action name="Exit" />
	</keybind>

	<keybind key="C-A-Delete">
		<action name="Exit" />
	</keybind>


	<!-- ## Reconfigure //-->
	<keybind key="A-S-c">
		<action name="Reconfigure" />
	</keybind>
