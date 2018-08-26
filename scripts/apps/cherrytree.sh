#!/bin/bash
file1="cherrytree-0.38.5"
if [ -f /root/Downloads/$file1.tar.xz ]; then
	echo CherryTree available.
else
        wget http://www.giuspen.com/software/$file1.tar.xz -P /root/Downloads/
        tar xf /root/Downloads/$file1.tar.xz  -C /root/Downloads/
	apt-get install python-gtksourceview2 -y
fi
nohup /root/Downloads/cherrytree-0.38.5/cherrytree ~/Nextcloud/Kali/notebooks/my_notes/jtekt_notes.ctb &
