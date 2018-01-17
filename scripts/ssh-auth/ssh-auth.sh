#!/bin/bash
eval $(ssh-agent -s)
ssh-add ~/Nextcloud/Projects/Kali/ssh-key/Jtekt
mkdir ~/.ssh
cp ~/Nextcloud/Projects/Kali/ssh-key/config ~/.ssh/
