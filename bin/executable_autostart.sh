#!/bin/bash -e

# This runs each time we login
~/bin/init-dotfiles.sh
~/bin/init-workstation.sh
~/bin/init-repos.sh

# cleanup after installer
rm -f ~/on-install.sh
