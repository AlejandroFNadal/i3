#!/bin/bash

# Detect connected monitors
if xrandr | grep "HDMI-1 connected"; then
    # Set up the external monitor to the right of your primary display (e.g., eDP-1)
    xrandr --output HDMI-1 --auto --right-of eDP-1
else
    # If HDMI-1 is disconnected, disable it
    xrandr --output HDMI-1 --off
fi

