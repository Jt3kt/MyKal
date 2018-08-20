#!/bin/bash
strBashrc="/root/.bashrc"
if grep -q "alias lm" "$strBashrc";
then
	echo "Alias exists."
else
	echo alias lm=\"ls -l \|more\" >> $strBashrc
	echo alias 'lm' added for ls -l pipe more
fi

if grep -q "ls -lh" "$strBashrc";
then
	echo "Alias exists."
else 
	echo alias ll=\"ls -lh\" >> $strBashrc
	echo alias 'll' added for ls -lh
fi

if grep -q "tail -f /var/log/messages" "$strBashrc";
then
	echo "Alias exists."
else
	echo alias tailm=\"tail -f /var/log/messages\" >> $strBashrc
	echo alias tailm added for tailing /v/l/messages
fi

if grep -q "sweep" "$strBashrc";
then
	echo "Alias exists."
else
	echo alias nsweep=\"nmap -sP\" >> $strBashrc
	echo alias nsweep added, use xxxx
fi

if grep -q "nserv" "$strBashrc";
then
	echo "Alias exists."
else
	echo alias nserv=\"nmap -p- -sV -sS -T3 -A\" >> $strBashrc
	echo alias nserv added, use xxxx
fi

if grep -q "nall" "$strBashrc";
then
	echo "Alias exists."
else
	echo alias nall=\"nmap -v -sS -A -T3\" >> $strBashrc
	echo alias nall added, use xxxx
fi

if grep -q "nlist" "$strBashrc";
then
	echo "Alias exists."
else
	echo alias nlist=\"nc -lvp\" >> $strBashrc
	echo alias nlist added, use xxx
fi 

#reload .bashrc
. ~/.bashrc
exec bash
