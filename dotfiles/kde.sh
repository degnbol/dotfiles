# on KDE plasma with konsole term, if theme download fails to load it might be because of a missing file. Make it:
sudo cp konsole.knsrc /etc/xdg/

# install suru++ icons https://github.com/gusbemacbe/suru-plus/wiki/Installing-the-stable-version-with-CLI
wget -qO- https://raw.githubusercontent.com/gusbemacbe/suru-plus/master/install.sh | env DESTDIR="$HOME/.local/share/icons" sh

# install blurred decoration (border of windows) https://github.com/alex47/BreezeBlurred

# some applications will change the audio level. Super annoying, they might set headphone level to 100%.
# fix it by changing flat-volumes from default yes to no
_ sed -Ei 's/;? ?flat-volumes.*/flat-volumes = no/' /etc/pulse/daemon.conf

