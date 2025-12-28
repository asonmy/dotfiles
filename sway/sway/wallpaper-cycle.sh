#!/usr/bin/env bash

# Prevent multiple instances
pgrep -f "$(basename "$0")" | grep -v $$ >/dev/null && exit 0

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
INTERVAL=300

# Cache wallpapers once
mapfile -t WALLPAPERS < <(
  find "$WALLPAPER_DIR" -type f \( \
    -iname '*.jpg' -o -iname '*.png' -o -iname '*.webp' -o -iname '*.jpeg' \
  \)
)

# Exit if none found
[ "${#WALLPAPERS[@]}" -eq 0 ] && exit 1

while true; do
  WALLPAPER="${WALLPAPERS[RANDOM % ${#WALLPAPERS[@]}]}"
  swaymsg output "*" bg "$WALLPAPER" fit
  sleep "$INTERVAL"
done

