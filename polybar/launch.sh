#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar --reload top &
polybar --reload bottom &
# Launch bar1 and bar2

echo "Bars launched..."
