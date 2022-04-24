# Termux-sparkle
This will teach you how to use sparkle(Wayland server) in termux desktops
# Type this command
nano sparkle.sh
# Now paste these lines into it
#!$PREFIX/bin/bash

set -e 

XDG_RUNTIME_DIR=/sparkle Xwayland &

sleep 1

export DISPLAY=:0

dbus-launch xfce4-session &
#############################

Note: replace xfce4-session with your session
https://i.postimg.cc/jjhkXGt4/IMG-20220424-180342.jpg
# Now setup sparkle app
Open sparkle and click on edit user.sh
Now delete everything and click save
# Now click start button and type sh sparkle.sh in termux
