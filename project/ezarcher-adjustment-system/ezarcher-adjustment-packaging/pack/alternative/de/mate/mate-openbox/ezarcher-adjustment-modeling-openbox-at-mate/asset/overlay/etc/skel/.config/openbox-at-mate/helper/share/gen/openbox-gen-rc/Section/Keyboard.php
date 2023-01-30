
<keyboard>
	<chainQuitKey>C-g</chainQuitKey>

<?php include_once(__DIR__ . '/Keybind/SystemExit.php'); ?>
<?php include_once(__DIR__ . '/Keybind/SystemSetting.php'); ?>
<?php include_once(__DIR__ . '/Keybind/SystemToggleShowDesktop.php'); ?>

<?php include_once(__DIR__ . '/Keybind/MenuClient.php'); ?>
<?php include_once(__DIR__ . '/Keybind/MenuRoot.php'); ?>
<?php include_once(__DIR__ . '/Keybind/MenuClientList.php'); ?>

<?php include_once(__DIR__ . '/Keybind/WorkspaceSwitch.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowMoveToWorkspace.php'); ?>

<?php include_once(__DIR__ . '/Keybind/WindowSwitch.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowFocusSwitch.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowRaiseLower.php'); ?>

<?php include_once(__DIR__ . '/Keybind/WindowClose.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowIconify.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowToggleMaximize.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowToggleFullscreen.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowToggleDecorations.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowToggleShade.php'); ?>

<?php include_once(__DIR__ . '/Keybind/WindowToggleAlwaysOnTop.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowSendToLayer.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowToggleAlwaysOnBottom.php'); ?>

<?php include_once(__DIR__ . '/Keybind/WindowBeginMove.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowBeginResize.php'); ?>

<?php include_once(__DIR__ . '/Keybind/WindowTiling.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowTilingMoveSide.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowTilingMoveCorner.php'); ?>
<?php include_once(__DIR__ . '/Keybind/WindowMoveToCenter.php'); ?>

<?php include_once(__DIR__ . '/Keybind/ApplicationLaunchRofi.php'); ?>
<?php include_once(__DIR__ . '/Keybind/ApplicationLaunchTerminal.php'); ?>
<?php include_once(__DIR__ . '/Keybind/ApplicationLaunchFavorite.php'); ?>

<?php include_once(__DIR__ . '/Keybind/ApplicationFocusFn.php'); ?>
<?php //include_once(__DIR__ . '/Keybind/ApplicationFocusTerminal.php'); ?>
<?php //include_once(__DIR__ . '/Keybind/ApplicationFocusFavorite.php'); ?>

<?php include_once(__DIR__ . '/Keybind/Volume.php'); ?>

<?php include_once(__DIR__ . '/Keybind/Screenshot.php'); ?>

<?php include_once(__DIR__ . '/Keybind/Wallpaper.php'); ?>

</keyboard>

<?php
/*

## Help

* http://openbox.org/wiki/Help:Configuration#Keyboard
* http://openbox.org/wiki/Help:Bindings#Key_bindings
* http://openbox.org/wiki/Help:Actions

## Doc

```
rebindOnMappingNotify If this is enabled, keybinds will be rebound if the keyboard layout changes at runtime. It is enabled by default.

The rest of this section contains keyboard shortcuts and is described on the bindings page.
```

*/
?>
