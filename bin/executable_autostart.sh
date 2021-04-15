#!/bin/bash -e

# This runs each time we login

# login to lastpass
lpass login lastpass@singularity.be

# sync chezmoi
chezmoi update

# init repos
~/bin/init-repos.sh
