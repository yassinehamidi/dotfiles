#!/usr/bin/env bash

chosen=$(printf "🔥 Lock\n🚪 Logout\n🔄 Reboot\n⏻ Shutdown\n💤 Suspend" | wofi --dmenu --prompt "Power" --location center --width 300 --height 250)

case "$chosen" in
    "🔥 Lock")      hyprlock ;;
    "🚪 Logout")   hyprctl dispatch exit ;;
    "🔄 Reboot")   systemctl reboot ;;
    "⏻ Shutdown") systemctl poweroff ;;
    "💤 Suspend")  systemctl suspend ;;
esac