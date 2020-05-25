# on KDE plasma with konsole term, if theme download fails to load it might be because of a missing file. Make it:
sudo cp konsole.knsrc /etc/xdg/

# install suru++ icons https://github.com/gusbemacbe/suru-plus/wiki/Installing-the-stable-version-with-CLI
wget -qO- https://raw.githubusercontent.com/gusbemacbe/suru-plus/master/install.sh | env DESTDIR="$HOME/.local/share/icons" sh

# install blurred decoration (border of windows) https://github.com/alex47/BreezeBlurred

# some applications will change the audio level. Super annoying, they might set headphone level to 100%.
# fix it by changing flat-volumes from default yes to no
_ sed -Ei 's/;? ?flat-volumes.*/flat-volumes = no/' /etc/pulse/daemon.conf
# you can restart pulseaudio to get immidiate effect
systemctl --user restart pulseaudio.service
systemctl --user restart pulseaudio.socket

# trying to make touchpad better
# runtime config of Xinput devices
_ apt install xinput
# https://bill.harding.blog/2018/01/07/linux-with-a-macbook-touchpad-feel-pt-2/
_ apt install xserver-xorg-input-synaptics
# you should be able to set settings in KDE system settings -> input devices -> touchpad.
# disable mouse click emulation, set reverse scrolling for both directions, set vertical scrolling to 60 mm and 7 mm, disable coasting and circular scrolling, set min pointer speed =0, and max 1/3 of full, about the same for acceleration.
# set min pressure factor 0, noise cancellation 50.
# also install https://github.com/bulletmark/libinput-gestures so you can e.g. swipe 3 fingers up to present windows


