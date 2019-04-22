#!/usr/bin/env bash

set -e

xrandr --fb 3840x1080 --output eDP-1 --panning 3840x1080+0+0/3840x1080+0+0
sleep 3
xrandr --fb 3840x1080 --output eDP-1 --panning 1920x1080+0+0/3840x1080+0+0
x11vnc -clip 1920x1080+1921+0 -nocursorshape -nocursorpos -ncache 10 -ncache_cr
xrandr --fb 1920x1080
