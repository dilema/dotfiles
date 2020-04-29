#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until process has been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar example &

