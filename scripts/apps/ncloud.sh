#!/bin/bash
#add-apt-repository ppa:nextcloud-devs/client
#apt-get update
if [ -e "/root/Downloads/Nextcloud-2.3.3-x86_64.AppImage" ]
then
	echo "Nextcloud client exists."
else
	wget https://download.nextcloud.com/desktop/releases/Linux/Nextcloud-2.3.3-x86_64.AppImage -P /root/Downloads/
fi
chmod 750 /root/Downloads/Nextcloud-2.3.3-x86_64.AppImage
if [ -e "./nextcloud.cfg" ]
then
	mkdir -p /root/.local/share/data/Nextcloud
	cp ./nextcloud.cfg /root/.local/share/data/Nextcloud/
else
	echo "No client configuration found.  Initiating with defaults."
fi
nohup sh -c /root/Downloads/Nextcloud-2.3.3-x86_64.AppImage > /dev/null &
