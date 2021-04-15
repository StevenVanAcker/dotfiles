#!/bin/bash -e

if [ -e ~/.finished-init-dotfiles ];
then
	exit 0
fi

export PATH=~/bin:$PATH


# login to lastpass
lpass login lastpass@singularity.be

# sync chezmoi
chezmoi update --apply --keep-going

touch ~/.finished-init-dotfiles

