#!/bin/bash -e

if [ -e ~/.finished-init-workstation ];
then
	exit 0
fi

tmpdir=$(mktemp -d)
cd $tmpdir
wget https://bit.ly/svaworkstation
chmod +x svaworkstation
./svaworkstation
rm -rf $tmpdir

touch ~/.finished-init-workstation
