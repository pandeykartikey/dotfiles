#! /bin/bash
#using the path WALLPAPERS will select a new random wallpaper
WALLPAPERS="/home/d3xt3r/.config/nitrogen/wallpapers"
ALIST=( `ls -w1 $WALLPAPERS` )
RANGE=${#ALIST[@]}
let "number = $RANDOM"
let LASTNUM="`cat $WALLPAPERS/.last` + $number"
let "number = $LASTNUM % $RANGE"
echo $number > $WALLPAPERS/.last 
sed -i '7 c\file='$WALLPAPERS/${ALIST[$number]}'' /home/d3xt3r/.config/nitrogen/bg-saved.cfg
let "number = $RANDOM"
let LASTNUM="`cat $WALLPAPERS/.last` + $number"
let "number = $LASTNUM % $RANGE"
echo $number > $WALLPAPERS/.last 
sed -i '12 c\file='$WALLPAPERS/${ALIST[$number]}'' /home/d3xt3r/.config/nitrogen/bg-saved.cfg
nitrogen --restore
exit