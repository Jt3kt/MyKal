#!/bin/bash
#eval $(ssh-agent -s)
chmod 600 ~/Nextcloud/Kali/config/ssh-key/Jtekt
ssh-add ~/Nextcloud/Kali/config/ssh-key/Jtekt
mkdir ~/.ssh
cp ~/Nextcloud/Kali/config/ssh-key/config ~/.ssh/
