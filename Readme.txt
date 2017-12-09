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

$ ln -s ~/.xinitrc ~/github/dotfiles/.xinitrc

*********************
*      Awesome      *
*********************
pacman -S awesome
yaourt -S lain-git
$ mkdir -p ~/.config/awesome/
$ cp /etc/xdg/awesome/rc.lua ~/.config/awesome/
$ cp /usr/share/awesome/themes ~/.config/awesome/themes -r

$ ln -s ~/.config/awesome/rc.lua ~/github/dotfiles/awesome/rc.lua
$ ln -s ~/.config/awesome/themes/zenburn/theme.lua ~/github/dotfiles/awesome/theme.lua

*********************
* Commit            *
*********************
$ cd github/dotfiles
$ git init
$ touch Readme.txt
$ git add .
$ git commit -m "Add Readme.txt"
$ git remote add origin https://github.com/alex-levin/dotfiles.git
$ git push -u origin master
Username for 'https://github.com': alex-levin
Password for 'https://alex-levin@github.com':
[alex@ideapad]: ~/github/dotfiles>$

