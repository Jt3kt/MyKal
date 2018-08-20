#!/bin/bash
./scripts/apps/ncloud.sh
echo "Return to continue."
read null
./scripts/alias/alias.sh
./scripts/ssh-auth/ssh-auth.sh
./scripts/git/git.sh
./scripts/apps/cherrytree.sh
