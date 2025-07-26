#!/bin/bash

WAYBAR_CONFIG_DIR="$HOME/.config/waybar/*"

while true; do
  inotifywait -q -e modify "$WAYBAR_CONFIG_DIR"
  killall waybar && waybar & disown
done