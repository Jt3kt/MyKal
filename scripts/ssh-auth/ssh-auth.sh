#!/bin/bash
#eval $(ssh-agent -s)
chmod 600 ~/Nextcloud/Projects/Kali/config/ssh-key/Jtekt
ssh-add ~/Nextcloud/Projects/Kali/config/ssh-key/Jtekt
mkdir ~/.ssh
cp ~/Nextcloud/Projects/Kali/config/ssh-key/config ~/.ssh/
