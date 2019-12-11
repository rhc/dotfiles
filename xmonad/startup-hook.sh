#!/bin/bash

xfce4-power-manager &
udiskie &
stalonetray &
syndaemon -d
# xscreensaver -no-splash  &
gnome-screensaver &
wmname "LG3D"

# Network manager
if [ -z "$(pgrep nm-applet)" ] ; then
    nm-applet --sm-disable &
fi
