#!/bin/sh

cd ~
git clone https://git.suckless.org/dwm
ln -s ~/github/dotfiles/dwm/config.h ~/dwm/config.h
ln -s ~/github/dotfiles/.SciTEUser.properties ~/.SciTEUser.properties
make -C ~/dwm
sudo ln -s ~/dwm/dwm /usr/local/bin/dwm
