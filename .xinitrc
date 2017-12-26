#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# monitor setup
intern=eDP1
extern=DP1
if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto &
else
    xrandr --output "$intern" --off --output "$extern" --auto &
fi

# xfce power manager
xfce4-power-manager &

# Load .Xresources file
xrdb -merge ~/.Xresources

# Network Manager applet
nm-applet &

# wicd connection manager
# wicd-client --tray &

# redshift gamma / brightness manager
redshift-gtk &

# exec enlightenment_start
# exec i3
# exec mate-session
# exec xmonad
# exec startlxqt
# exec startlxde
exec awesome
# exec bspwm
# exec gnome-session
# exec gnome-session --session=gnome-classic
# exec startkde
# exec startxfce4
# exec startfluxbox
# exec openbox-session
# exec cinnamon-session
# exec pekwm
# exec catwm

# exec ~/github/dotfiles/dwm/dwm_status.sh &
# exec dwm
