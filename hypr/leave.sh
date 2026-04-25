#!/bin/bash

# Simple power menu using a terminal prompt
echo "Choose an action:"
echo "1) Lock"
echo "2) Logout"
echo "3) Reboot"
echo "4) Shutdown"
echo "5) Suspend"

read -rp "Enter choice [1-5]: " choice

case "$choice" in
    1) hyprlock ;;   # or swaylock/i3lock depending on your setup
    2) hyprctl dispatch exit ;;
    3) systemctl reboot ;;
    4) systemctl poweroff ;;
    5) systemctl suspend ;;
    *) echo "Invalid option" ;;
esac
