#!/bin/sh -e
# Credits to asutoshpalai

# Take a screenshot
scrot /tmp/screen_locked.png

# Pixellate it 10x
mogrify -scale 6.75% -scale 1500% /tmp/screen_locked.png

# Lock screen displaying this image.
i3lock -i /tmp/screen_locked.png

# Turn the screen off after a delay.
sleep 30
pgrep i3lock > /dev/null && systemctl suspend

