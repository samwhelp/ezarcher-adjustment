from __future__ import annotations
from typing import Callable, Any

import os
import pwd
import time
import logging

from newm.layout import Layout
from newm.helper import BacklightManager, WobRunner, PaCtl

from pywm import (
    PYWM_MOD_LOGO,
    PYWM_MOD_ALT
)

logger = logging.getLogger(__name__)

background = {
    #'path': os.path.dirname(os.path.realpath(__file__)) + '/resources/wallpaper.jpg',
    'path': '/usr/share/backgrounds/default.jpg',
    'anim': True
}

outputs = [
    { 'name': 'eDP-1' },
   # { 'name': 'virt-1', 'pos_x': -1280, 'pos_y': 0, 'width': 1280, 'height': 720 }
    { 'name': 'virt-1', 'pos_x': -1280, 'pos_y': 0, 'width': 1280, 'height': 1280 }
]

wob_runner = WobRunner("wob -a bottom -M 100")
backlight_manager = BacklightManager(anim_time=1., bar_display=wob_runner)
kbdlight_manager = BacklightManager(args="--device='*::kbd_backlight'", anim_time=1., bar_display=wob_runner)
def synchronous_update() -> None:
    backlight_manager.update()
    kbdlight_manager.update()

pactl = PaCtl(0, wob_runner)

def key_bindings(layout: Layout) -> list[tuple[str, Callable[[], Any]]]:

    return [    

        #("L-p", lambda: layout.ensure_locked(dim=True)),
        #("L-P", lambda: layout.terminate()),

        ("A-S-c", lambda: layout.update_config()),
        ("A-S-x", lambda: os.system("wlogout &")),




        #("L-", lambda: layout.toggle_overview()),
        ("L-grave", lambda: layout.toggle_overview()),

        ("L-f", lambda: layout.toggle_fullscreen()),
        ("L-q", lambda: layout.close_focused_view()),


        #("L-u", lambda: layout.basic_scale(-1)),
        #("L-n", lambda: layout.basic_scale(1)),
        #("L-t", lambda: layout.move_in_stack(1)),
        #("L-b", lambda: layout.move_in_stack(-1)),

        ("L-t", lambda: layout.basic_scale(-1)),
        ("L-b", lambda: layout.basic_scale(1)),
        ("L-u", lambda: layout.move_in_stack(1)),
        ("L-n", lambda: layout.move_in_stack(-1)),


        ("L-k", lambda: layout.move(0, -1)),
        ("L-j", lambda: layout.move(0, 1)),
        ("L-h", lambda: layout.move(-1, 0)),
        ("L-l", lambda: layout.move(1, 0)),

        ("L-S-k", lambda: layout.move_focused_view(0, -1)),
        ("L-S-j", lambda: layout.move_focused_view(0, 1)),
        ("L-S-h", lambda: layout.move_focused_view(-1, 0)),
        ("L-S-l", lambda: layout.move_focused_view(1, 0)),

        ("L-C-k", lambda: layout.resize_focused_view(0, -1)),
        ("L-C-j", lambda: layout.resize_focused_view(0, 1)),
        ("L-C-h", lambda: layout.resize_focused_view(-1, 0)),
        ("L-C-l", lambda: layout.resize_focused_view(1, 0)),




        ("A-Return", lambda: os.system("sakura &")),
        ("A-S-a", lambda: os.system("sakura &")),
        ("A-S-d", lambda: os.system("wofi --show drun &")),




        ("XF86MonBrightnessUp", lambda: backlight_manager.set(backlight_manager.get() + 0.1)),
        ("XF86MonBrightnessDown", lambda: backlight_manager.set(backlight_manager.get() - 0.1)),
        ("XF86KbdBrightnessUp", lambda: kbdlight_manager.set(kbdlight_manager.get() + 0.1)),
        ("XF86KbdBrightnessDown", lambda: kbdlight_manager.set(kbdlight_manager.get() - 0.1)),
        ("XF86AudioRaiseVolume", lambda: pactl.volume_adj(5)),
        ("XF86AudioLowerVolume", lambda: pactl.volume_adj(-5)),
        ("XF86AudioMute", lambda: pactl.mute()),

    ]

panels = {
    'lock': {
        'cmd': 'sakura -e newm-panel-basic lock',
    },
    'launcher': {
        'cmd': 'sakura -e newm-panel-basic launcher'
    },
    'top_bar': {
        'native': {
            'enabled': True,
            'texts': lambda: [
                pwd.getpwuid(os.getuid())[0],
                time.strftime("%c"),
            ],
        }
    },
    'bottom_bar': {
        'native': {
            'enabled': True,
            'texts': lambda: [
                "newm",
                "powered by pywm"
            ],
        }
    },
}

energy = {
    'idle_callback': backlight_manager.callback
}
