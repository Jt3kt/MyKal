#!/bin/bash
#Standard : xrandr -s 1280x1024
#Widescreen : xrandr -s 1680x1050
echo "Standard or widescreen? (s/w)"
read res
if [ $res = s ];
then
	xrandr -s 1280x1024
elif [ $res = w ]
then
	xrandr -s 1680x1050
fi
echo "Resolution good? (y/n)"
read check
if [ $check = n ];
then
	xrandr -s 800x600
fi
