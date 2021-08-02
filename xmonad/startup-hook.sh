#!/bin/bash

xfce4-power-manager &
stalonetray &
feh --bg-scale /usr/share/backgrounds/Cathédrale_Marie-Rheine-du-Monde_by_Thierry_Pon.jpg &
syndaemon -d

# xscreensaver -no-splash  &
gnome-screensaver &
wmname "LG3D"

# Network manager
if [ -z "$(pgrep nm-applet)" ] ; then
    nm-applet --sm-disable &
fi
blueman-applet &


