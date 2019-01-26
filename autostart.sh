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

# daemons
run unclutter -root
run $HOME/.config/awesome/urxvtd.sh

# compositor
run compton -b --config ~/.config/compton/compton.conf

# applets
run blueman-applet
run solaar

# user programs in tag order
run firefox
run atom
run nemo
run pulseeffects --gapplication-service
run pavucontrol
run VirtualBox
