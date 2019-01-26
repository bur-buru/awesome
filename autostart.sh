#!/bin/sh
# check if program is already running. If not, run it.
function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

# screen saver
run $HOME/bin/ssoff

# system
run unclutter -root

# compositor
run compton -b --config ~/.config/compton.conf

# daemons
run $HOME/.config/awesome/urxvtd.sh

# applets
run blueman-applet

# user programs in tag order
run firefox
run atom
run nemo
run pulseeffects --gapplication-service
run pavucontrol
run VirtualBox
