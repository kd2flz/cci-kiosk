#!/bin/bash
#This file is placed in the directory /opt

xset -dpms
xset s off
openbox-session &
start-pulseaudio-x11

#while true; do
 # rm -rf ~/.{config,cache}/chromium-browser/
  #chromium-browser --kiosk --no-first-run  'http://bruderhof.com'
#done