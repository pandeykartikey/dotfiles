#!/bin/sh -e
# Credits to asutoshpalai

# Take a screenshot
# img="/tmp/screen_locked.png"
# scrot $img

# Pixellate it 10x
# mogrify -blur 18,6 $img

# Lock screen displaying this image.
# i3lock -i /tmp/screen_locked.png

locktext="Type password to unlock..."

letterEnteredColor=d23c3dff
letterRemovedColor=d23c3dff
passwordCorrect=00000000
passwordIncorrect=d23c3dff
background=00000000
foreground=ffffffff

i3lock \
	-t -e -f -B=0.3 -p win\
	--timepos="x+110:h-70" \
	--datepos="x+43:h-45" \
	--clock --date-align 1 --datestr "$locktext" \
	--insidecolor=$background --ringcolor=$foreground --line-uses-inside \
	--keyhlcolor=$letterEnteredColor --bshlcolor=$letterRemovedColor --separatorcolor=$background \
	--insidevercolor=$passwordCorrect --insidewrongcolor=$passwordIncorrect \
	--ringvercolor=$foreground --ringwrongcolor=$foreground --indpos="x+280:h-70" \
	--radius=20 --ring-width=4 --veriftext="" --wrongtext="" \
	--verifcolor="$foreground" --timecolor="$foreground" --datecolor="$foreground" \
	--noinputtext=""

# Turn the screen off after a delay.
sleep 30
pgrep i3lock > /dev/null && systemctl suspend


