#!/bin/bash
export DISPLAY=:0
XAUTHORITY=/home/ckyony/.Xauthority

POWERSUPPLY="/sys/class/power_supply/AC/online" # could be different on your system!
TOO_LOW=90 # how low is too low?
NOT_CHARGING="0"
ICON="/usr/share/icons/ubuntu-mono-dark/status/24/battery-low.svg" # eye candy

if [ -r "$HOME/.dbus/Xdbus" ]; then
    . "$HOME/.dbus/Xdbus"
fi


BATTERY_LEVEL=$(acpi -b | grep -P -o '[0-9]+(?=%)')
STATUS=$(cat $POWERSUPPLY)

if [ $BATTERY_LEVEL -le $TOO_LOW -a $STATUS -eq $NOT_CHARGING ]
then
    /usr/bin/notify-send -u critical -i "$ICON" -t 1000 "Battery low" "Battery level is ${BATTERY_LEVEL}%!" 
fi

exit 0
