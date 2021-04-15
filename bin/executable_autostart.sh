#!/bin/bash -e

# This runs each time we login
export PATH=~/bin:$PATH

# login to lastpass
lpass login lastpass@singularity.be

# sync chezmoi
chezmoi update --apply --keep-going

# init repos
~/bin/init-repos.sh
