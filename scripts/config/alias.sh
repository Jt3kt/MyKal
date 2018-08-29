#!/bin/bash
strBashrc="/root/.bashrc"
if grep -q "alias lm" "$strBashrc";
then
	echo "Alias lm exists."
else
	echo alias lm=\"ls -l \|more\" >> $strBashrc
	echo alias 'lm' added for ls -l pipe more
fi

if grep -q "ls -lh" "$strBashrc";
then
	echo "Alias ll exists."
else 
	echo alias ll=\"ls -lh\" >> $strBashrc
	echo alias 'll' added for ls -lh
fi

if grep -q "tail -f /var/log/messages" "$strBashrc";
then
	echo "Alias tailm exists."
else
	echo alias tailm=\"tail -f /var/log/messages\" >> $strBashrc
	echo alias tailm added for tailing /v/l/messages
fi

if grep -q "sweep" "$strBashrc";
then
	echo "Alias sweep exists."
else
	echo alias nsweep=\"nmap -sP\" >> $strBashrc
	echo alias nsweep added, use xxxx
fi

if grep -q "nserv" "$strBashrc";
then
	echo "Alias nserv exists."
else
	echo alias nserv=\"nmap -p- -sV -sS -T3 -A\" >> $strBashrc
	echo alias nserv added, use xxxx
fi

if grep -q "nall" "$strBashrc";
then
	echo "Alias nall exists."
else
	echo alias nall=\"nmap -v -p- -sS -A -T3\" >> $strBashrc
	echo alias nall added, use xxxx
fi

if grep -q "nlist" "$strBashrc";
then
	echo "Alias nlist exists."
else
	echo alias nlist=\"nc -lvp\" >> $strBashrc
	echo alias nlist added, use xxx
fi 

if grep -q "wc -l" "$strBashrc";
then
	echo "Alias rwl - Rank Word Lists exists."
else
	echo alias rkl=\'wc -l /usr/share/wordlists/* \| sort -rn\' >> $strBashrc
fi

if grep -q "cherrytree" "$strBashrc";
then
	echo "Alias cherrytree exists."
else
	echo alias cherrytree=\"nohup /root/Downloads/cherrytree-0.38.5/cherrytree \> /dev/null \& \" >> $strBashrc
fi

if grep -q "htb" "$strBashrc";
then
        echo "Alias htb - HacktheBox exists."
else
        echo alias htb=\"nohup openvpn /root/Nextcloud/Kali/config/htb/Jtekt.ovpn \& \" >> $strBashrc
fi

if grep -q "disc" "$strBashrc";
then
        echo "Alias disc - Disconnect VPN exists."
else
        echo alias disc=\"killall -15 openvpn\" >> $strBashrc
fi

#reload .bashrc
. ~/.bashrc
exec bash
