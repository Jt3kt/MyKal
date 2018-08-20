#!/bin/bash
./scripts/apps/ncloud.sh
echo "Return to continue."
read null
./scripts/ssh-auth/ssh-auth.sh
./scripts/git/git.sh
./scripts/apps/cherrytree.sh
./scripts/alias/alias.sh
