#!/bin/sh

pkill volume-icon &

flameshot &
lxpolkit &
lxsession &
xfce4-power-manager &
volumeicon &
fcitx5 &
picom -b &
copyq &
conky -c $HOME/.config/conky/conky.conf
nm-applet &
exec xautolock -detectsleep 
  -time 3 -locker slock \
  -notify 30 \
  -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'"&
