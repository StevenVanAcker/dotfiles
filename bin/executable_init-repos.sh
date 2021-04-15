#!/bin/bash -e

# run this at first login, and then never again
# checkout and run workstation-repos repo, which will checkout a bunch of repos we need all the time

if [ -e ~/.finished-init-repos ];
then
	exit 0
fi

mkdir -p ~/Projects.git
cd ~/Projects.git

git clone git@bitbucket.org:StevenVanAcker/workstation-repositories.git
cd workstation-repositories
./install.sh

touch ~/.finished-init-repos
