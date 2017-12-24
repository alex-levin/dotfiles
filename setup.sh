#!/bin/sh

cd ~
chmod + x /home/alex/github/dotfiles/dwm/dwm_status.sh
git clone https://git.suckless.org/dwm
ln -s ~/github/dotfiles/.xinitrc ~/.xinitrc
ln -s ~/github/dotfiles/dwm/config.h ~/dwm/config.h
ln -s ~/github/dotfiles/.SciTEUser.properties ~/.SciTEUser.properties
make -C ~/dwm
sudo ln -s ~/dwm/dwm /usr/local/bin/dwm
