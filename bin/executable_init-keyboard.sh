#!/bin/bash -e

if [ -e ~/.finished-init-keyboard ];
then
	exit 0
fi

gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'se')]"

touch ~/.finished-init-keyboard

