#!/data/data/com.termux/files/usr/bin/bash
if [ -d /data/data/com.sion.sparkle ]; then
:
else
echo -e 'sparkle app not found quitting' && exit
fi
sed -i '/^/d' /data/data/com.sion.sparkle/files/user.sh
echo -e 'now open sparkle app and click on start[press enter to continue]' && read
echo 'XDG_RUNTIME_DIR=/data/data/com.sion.sparkle/files Xwayland &
sleep 1
export DISPLAY=:0
dbus-launch xfce4-session &' > sparkle.sh
sh sparkle.sh
