#!/bin/sh

exec > .xsession-errors 2>&1

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Font Paths
xset +fp /usr/share/fonts/envypn
xset +fp /usr/share/fonts/misc
xset +fp ~/.fonts
xset fp rehash

# Keyboard LED
xset led 3

xsetroot -cursor_name left_ptr

/usr/lib/polkit-gnome-authentication-agent-1 &
numlockx &
dunst &
compton -cG &
nitrogen --restore &

#Startd MPD(if not already running)
[ ! -s ~/.config/mpd/pid ] && mpd ~/.config/mpd/mpd.conf &

sxhkd &
#urxvt &
exec bspwm
