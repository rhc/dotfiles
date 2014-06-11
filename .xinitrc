#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources 
setxkbmap -option caps:escape
xset +fp /usr/share/fonts/local
xset fp rehash
xsetroot -cursor_name left_ptr


# do something smarter here
# turn off Display Power Management Service (DPMS)
#xset -dpms
#setterm -blank 0 -powerdown 0

# turn off black Screensaver
/usr/bin/xscreensaver -no-splash &
#xset s off

# disable the touchpad while typing
/usr/bin/syndaemon  -d -k -i 0.6

#dzen2 -ta r -fg '#a8a3f7' -bg '#3f3c6d' -fn '-*-terminus-medium-r-normal--16-*' -e "button1=exec:xterm" & 
urxvt &
firefox &

# auto mount disk in /media with no configuration 
udiskie --tray &

pulseaudio --start &
exec xmonad




