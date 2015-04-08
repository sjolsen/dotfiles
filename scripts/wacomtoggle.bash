#!/bin/bash

state=$(xsetwacom get "Wacom Bamboo 16FG 4x5 Finger touch" Touch)

if [ ${state} = "off" ]; then
    xsetwacom set "Wacom Bamboo 16FG 4x5 Finger touch" Touch on
else
    xsetwacom set "Wacom Bamboo 16FG 4x5 Finger touch" Touch off
fi
