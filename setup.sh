#!/bin/sh

cd ~
git clone https://git.suckless.org/dwm
chmod +x ~/github/dotfiles/dwm/run_mygtkmenu.sh
chmod +x ~/github/dotfiles/dwm/dwm_status
# cp ~/github/dotfiles/dwm/config.h ~/dwm/
ln -s ~/github/dotfiles/dwm/config.h ~/dwm/config.h
ln -s ~/github/dotfiles/.SciTEUser.properties ~/.SciTEUser.properties
make -C ~/dwm
sudo ln -s ~/dwm/dwm /usr/local/bin/dwm
