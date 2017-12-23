#!/bin/sh

chmod +x ~/github/dotfiles/dwm/dwm_custom_dmenu
chmod +x ~/github/dotfiles/dwm/dwm_status
cp ~/github/dotfiles/dwm/config.h ~/dwm/
cp ~/github/dotfiles/dwm/dwm_custom_dmenu ~/
cp ~/github/dotfiles/dwm/dwm_status ~/
make -C ~/dwm
sudo ln -s ~/dwm/dwm /usr/local/bin/dwm
