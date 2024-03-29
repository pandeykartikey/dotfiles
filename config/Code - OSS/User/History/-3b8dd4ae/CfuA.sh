#!/bin/env sh

pkill polybar

sleep 1;

(
  flock 200

  killall -q polybar

  while pgrep -u $UID -x polybar > /dev/null; do sleep 0.5; done

  outputs=$(xrandr --query | grep " connected" | cut -d" " -f1)

  set -- $outputs

  for m in $outputs; do
    export MONITOR=$m
    export TRAY_POSITION=none
    if [[ $m == "$2" ]]; then
      TRAY_POSITION=right
    fi

    polybar --reload main </dev/null >/var/tmp/polybar-$m.log 2>&1 200>&- &
    disown
  done
) 200>/var/tmp/polybar-launch.lock
