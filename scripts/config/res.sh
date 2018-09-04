#!/bin/bash
#Standard : xrandr -s 1280x1024
#Widescreen : xrandr -s 1680x1050
echo "Standard or widescreen? (s/w/p)"
echo "s - 1280x1024"
echo "w - 1680x1050"
echo "p - 1920x1080"
read res
if [ $res = s ];
then
	xrandr -s 1280x1024
elif [ $res = w ]
then
	xrandr -s 1680x1050
elif [ $res = p ]
then
	xrandr -s 1920x1080
fi
echo "Resolution good? (y/n)"
read check
if [ $check = n ];
then
	xrandr -s 800x600
fi
