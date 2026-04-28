#!/usr/bin/env bash

# Check for active wofi processes
WOFI_PID=$(pgrep -f "wofi.*drun" | head -1)

if [ -n "$WOFI_PID" ]; then
    # Already running, kill it
    kill $WOFI_PID 2>/dev/null
else
    # Not running, launch
    wofi --show drun --allow-images --normal-window --prompt "Apps" --location center --width 600 --height 400 &
fi
