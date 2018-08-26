#!/bin/bash
./scripts/config/res.sh
./scripts/apps/ncloud.sh
echo "Return to continue."
read null
./scripts/config/ssh-auth.sh
./scripts/config/git.sh
./scripts/apps/cherrytree.sh
./scripts/config/passwd.sh
./scripts/config/alias.sh

