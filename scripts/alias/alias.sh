#!/bin/bash
strBashrc="/root/.bashrc"
if grep -q "alias lm" "$strBashrc";
then
	echo "Alias exists."
else
	echo alias lm=\"ls -l \|more\" >> $strBashrc
fi
if grep -q "ls -lh" "$strBashrc";
then
	echo "Alias exists."
else 
	echo alias ll=\"ls -lh\" >> /root/.bashrc
fi
if grep -q "tail -f /var/log/messages" "$strBashrc";
then
	echo "Alias exists."
else
	echo alias tailm=\"tail -f /var/log/messages\" >> /root/.bashrc
fi
