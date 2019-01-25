#!/bin/sh
# this checks if the program is already running.
# If not, starts it.
function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
# compositor
#run compton -b -c --config ~/.config/compton.conf --backend glx --vsync opengl-swc --glx-use-copysubbuffermesa --xrender-sync --xrender-sync-fence

# display
#run ~/bin/dual.sh
run $HOME/bin/ssoff

# system
#run unclutter -root

#run urxvtd.sh
run $HOME/.config/awesome/urxvtd.sh

# bluetooth
run blueman-applet

# wifi

# audio
run pulseeffects --gapplication-service
run pulseeffects
run pavucontrol

# terminal
#run xterm
#run termite

# user gui programs
run atom
#run gitkraken
run firefox
#run nemo
run VirtualBox
