#!/bin/bash -e

if [ -e ~/.finished-init-repos ];
then
	exit 0
fi

mkdir -p ~/Projects.git
cd ~/Projects.git

if [ -d workstation-repositories ];
then
	cd workstation-repositories
	git pull
else
	git clone git@bitbucket.org:StevenVanAcker/workstation-repositories.git
	cd workstation-repositories
fi

./install.sh

touch ~/.finished-init-repos
