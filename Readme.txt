*********************
* Github notes       *
*********************
Run these once:
$ git config --global github.user alex-levin
$ git config --global user.email "al*******@gmail.com"
$ git config --global user.name "Alex Levin"

Create a new dotfiles repository on github.com/alex-levin.
In the upper right corner, next the avatar or identicon, click + 
and then select New repository.
Enter dotfiles in Repository Name.

$ mkdir -p github/dotfiles/awesome

*********************
*      Awesome      *
*********************
pacman -S awesome
yaourt -S lain-git
$ mkdir -p ~/.config/awesome/
$ cp /etc/xdg/awesome/rc.lua ~/.config/awesome/
$ cp /usr/share/awesome/themes ~/.config/awesome/themes -r

*********************************************
*  Copy files to the local repository       *
*********************************************
$ cp ~/.xinitrc ~/github/dotfiles/.xinitrc
$ cp ~/.config/awesome/rc.lua ~/github/dotfiles/awesome/rc.lua
$ cp ~/.config/awesome/themes/zenburn/theme.lua ~/github/dotfiles/awesome/theme.lua


*********************
* Commit to Github  *
*********************
$ cd github/dotfiles
$ git init
$ git remote add origin https://github.com/alex-levin/dotfiles.git
$ touch Readme.txt
$ git add .
$ git commit -m "Add Readme.txt"
$ git push -u origin master

*********************
* dwm               *
*********************
Super-o to start custom menu
