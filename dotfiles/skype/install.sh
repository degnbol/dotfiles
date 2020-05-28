#!/usr/bin/env zsh

wget https://go.skype.com/skypeforlinux-64.deb
_ apt install ./skypeforlinux-64.deb -y
rm skypeforlinux-64.deb

# install camera driver
sudo apt install kmod libssl-dev

# from https://askubuntu.com/questions/990218/camera-not-working-on-macbook-pro
git clone https://github.com/patjak/facetimehd-firmware.git
cd facetimehd-firmware
make
sudo make install
cd ..

git clone https://github.com/patjak/bcwc_pcie.git
cd bcwc_pcie
make
sudo make install
sudo depmod
# remove some driver, it fails since it is not already there
#sudo modprobe -r bdc_pci
# add driver to kernel
sudo modprobe facetimehd
# add the line "facetimehd" at the end:
sudoedit /etc/modules



