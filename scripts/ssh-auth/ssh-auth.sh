#!/bin/bash
eval $(ssh-agent -s)
chmod 600 ~/Nextcloud/Projects/Kali/ssh-key/Jtekt
ssh-add ~/Nextcloud/Projects/Kali/ssh-key/Jtekt
mkdir ~/.ssh
cp ~/Nextcloud/Projects/Kali/ssh-key/config ~/.ssh/
