exec > .xsession-errors 2>&1

xsetroot -cursor_name left_ptr
#hsetroot -solid "#FFFFFF"
xrdb -merge .Xresources
#setxkbmap hr
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/OTF
xset fp rehash
#xcompmgr -c
#urxvtd -q -f -o &

#host=$(hostname -s)
#if [ "$host" == "exodus" ]; then
 # vmware-user-suid-wrapper
 # xset -dpms
 # xset s noblank
 # xset s off
 # xrandr --output Virtual1 --mode 1280x1024
#fi

#feh --bg-center ~/.wp/wallpaper-$host.*
#~/.fehbg
nitrogen --restore &
dunst &
#sxhkd &

#if [ "$host" == "kreator" ]; then
 # mpd
 # mpdscribble
 # compton &
 # skype &
 # pidgin &
#fi

exec $1
