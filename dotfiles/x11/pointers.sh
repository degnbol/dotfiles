#!/usr/bin/env zsh

# trying to make touchpad better
# runtime config of Xinput devices
_ apt install xinput
# https://bill.harding.blog/2018/01/07/linux-with-a-macbook-touchpad-feel-pt-2/
_ apt install xserver-xorg-input-synaptics
# you should be able to set settings in KDE system settings -> input devices -> touchpad.
# disable mouse click emulation, set reverse scrolling for both directions, set vertical scrolling to 60 mm and 7 mm, disable coasting and circular scrolling, set min pointer speed =0, and max 1/3 of full, about the same for acceleration.
# set min pressure factor 0, noise cancellation 50.
# also install https://github.com/bulletmark/libinput-gestures so you can e.g. swipe 3 fingers up to present windows

# I had a lot of trouble making mouse and touchpad respond to changes at the same time when changing /etc/X11/xorg.conf and /etc/X11/xorg.conf.d/[0-9][0-9]*.conf files.
# I ended up using the files here:
_ cp xorg.conf /etc/X11/
_ cp xorg.conf.d/* /etc/X11/xorg.conf.d/


