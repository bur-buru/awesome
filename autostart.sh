#!/bin/zsh

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

#run urxvtd
run /home/burburu/.config/awesome/urxvtd.sh

# bluetooth
run blueman-applet

# wifi

# audio
run pulseeffects --gapplication-service
run pulseeffects
run pavucontrol

# Tag 1
run firefox

# Tag 2
run atom
run gitkracken

# Tag 3
run termite
run xterm

# Tag 4


# Tag 5
run nemo

# Tag 6


# Tag 7
run virtualbox

# Tag 8


# Tag 9


# Tag 0
