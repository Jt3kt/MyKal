#!/bin/bash
./scripts/ncloud/ncloud.sc
echo "Return to continue."
read null
./scripts/alias/alias.sh
./scripts/ssh-auth/ssh-auth.sh
./scripts/git/git.sh
