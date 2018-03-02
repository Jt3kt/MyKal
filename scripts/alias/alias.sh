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
	echo alias ll=\"ls -lh\" >> $strBashrc
fi

if grep -q "tail -f /var/log/messages" "$strBashrc";
then
	echo "Alias exists."
else
	echo alias tailm=\"tail -f /var/log/messages\" >> $strBashrc
fi

if grep -q "sweep" "$strBashrc";
then
	echo "Alias exists."
else
	echo alias sweep=\"nmap -sP\" >> $strBashrc
fi

if grep -q "nserv" "$strBashrc";
then
	echo "Alias exists."
else
	echo alias nserv=\"nmap -p- -sV -sS -T3 -A\" >> $strBashrc
fi

if grep -q "nall" "$strBashrc";
then
	echo "Alias exists."
else
	echo alias nall=\"nmap -v -sS -A -T3\" >> $strBashrc
fi


#reload .bashrc
source ~/.bashrc
