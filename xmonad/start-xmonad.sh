#!/bin/bash
# 
# xmonad startup script. Intended to be run from an xsession configuration
# to run xmonad and some associated programs.
# 
# Author: David Brewer
# Repository: https://github.com/davidbrewer/xmonad-ubuntu-conf

#
# KLUDGES AND WORKAROUNDS
#

# Clear xmonad.state before starting xmonad -- otherwise this causes weird
# issues, especially when going between single screen and multi-screen
rm -f ~/.xmonad/xmonad.state

#
# GENERAL INITIALIZATION
#

# Identify the home of our gtkrc file, important for setting styles of 
# gtk-based applications
# export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# Load X resources (fixes some font issues)
# TODO
#xrdb -merge .Xresources

# Start compositing to support transparency. You can omit this
# if you prefer not to use any transparency, but it is likely to cause
# ugly black fringing with some programs such as synapse that expect
# transparency support.
xcompmgr -n &

#
# SCREEN CONFIGURATION
#

# Default icon slot size for tray icons...
# We will adjust this parameter if necessary depending on the
# screen we end up using, to avoid gaps between xmobar and stalonetray
STALONETRAY_SLOT_SIZE=24

# We handle our screen configuration using xrandr. You are likely to want to 
# edit this section to match the specific demands of your setup. The below
# setup is for a Lenovo W520 laptop that sometimes has an external monitor
# hooked up via either VGA or DVI, positioned to the left of the laptop.
#
# Note that you can run xrandr at the command line to get a list of your
# connected screens and find out what names you should use to refer to them.

# Activate primary screen 
# on Dell precision
xrandr --output eDP1 --auto --primary

# If we find that a screen is connected via VGA, activate it and position it
# to the left of the primary screen.
xrandr | grep 'VGA-1 connected' | ifne xrandr --output VGA-1 --auto --left-of eDP1

# If we find that a screen is connected via Display Port,activate it and position it
# to the left of the primary screen.
xrandr | grep 'DP-2 connected' | ifne xrandr --output DP-2 --auto --left-of eDP1
xrandr | grep 'DP-3 connected' | ifne xrandr --output DP-3 --auto --left-of eDP1

# If we find a screen connected via Display Port, make it the primary screen
# and deactivate the built-in screen... also adjust size of icons
#DP_1_CONNECTED=`xrandr | grep 'DP-1 connected'`
#if [ -n "$DP_1_CONNECTED" ]; then
#  xrandr --output LVDS-1-1 --off
#  xrandr --output DP-1 --auto --primary
#  STALONETRAY_SLOT_SIZE=29
#fi

#
# LOAD SCREEN BACKGROUNDS
#

# To set your backgrounds, run nitrogren /path/to/images
# TODO: consider nitrogen
#nitrogen --restore &
feh --bg-scale /usr/share/backgrounds/Spring_by_Peter_Apas.jpg

#
# STARTUP ICON TRAY
#

# # We are using stalonetray to create a small icon tray at the
# # top right of the screen. You are likely to want to tweak the
# # size of the icons and the width of the tray based upon the
# # size of your screen and your xmobar configuration. The goal is
# # to make stalonetray look like it is part of xmobar.
# # 
# # Line by line, the options used by default below mean:
# # - icons should be aligned with the "East" or right side of the tray
# # - the width of the tray should be 5 icons wide by one icon tall, and it 
# #   should be located 0 pixels from the right of the screen (-0) and 0 pixels
# #   from the top of the screen (+0).
# # - By setting our maximum geometry to the same thing, the tray will not grow.
# # - The background color of the tray should be black.
# # - This program should not show up in any taskbar.
# # - Icons should be set to size "24". 
# # - Kludges argument of "force_icons_size" forces all icons to really, truly 
# #   be the size we set.
# # - window-strut "none" means windows are allowed to cover the tray. In
# #   other words, trust xmonad to handle this part.
# #
# stalonetray \
#   --icon-gravity E \
#   --geometry 5x1-0+0 \
#   --max-geometry 5x1-0+0 \
#   --background '#000000' \
#   --skip-taskbar \
#   --icon-size 24 \
#   --slot-size $STALONETRAY_SLOT_SIZE \
#   --kludges force_icons_size \
#   --window-strut none \
# &


# Run the gnome-keyring-daemon to avoid issues you otherwise may encounter
# when using gnome applications which expect access to the keyring, such
# as Empathy. This prevents prompts you may otherwise get for invalid
# certificates and the like.
gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh

# Remap caps lock to left control. This is not strictly speaking
# xmonad related, but it's handy if you're a vim user.
setxkbmap -option 'ctrl:nocaps'

# Change the default X cursor away from the "X"
xsetroot -cursor_name left_ptr


# Now, finally, start xmonad
exec xmonad
