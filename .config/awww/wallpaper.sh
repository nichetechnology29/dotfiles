#!/bin/bash
WALLPAPER_DIR="$HOME/.config/awww/wallpapers/1"
INTERVAL=300

while true; do
  find "$WALLPAPER_DIR" -type f | shuf -n 1 | xargs awww img \
    --transition-type simple \
    --transition-step 5
  sleep $INTERVAL
done
