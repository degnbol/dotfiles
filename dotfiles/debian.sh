# packages to install
# make sure to have the sources needed
_ cp sources.list /etc/apt/
_ apt update
_ apt upgrade

# generate locale for DK standards so they are available for use.
_ locale-gen en_DK.UTF-8

_ apt install curl wget rename git xz-utils cpio
_ apt install python-pip python3-pip
_ apt install git-lfs
git lfs install

_ apt install flatpak -y
# add repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

_ flatpak install mendeley
_ flatpak install dropbox
# you can run it from ctrl+search dropbox or from flatpak run com.dropbox.client

_ apt install fonts-powerline

_ apt install neovim -y
# install plug-vim https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# power management. thermald helps avoid overheating https://unix.stackexchange.com/questions/401268/cpu-overheating-on-linux-but-not-on-windows-while-doing-the-same-things
_ apt install tlp tlp-rdw thermald linux-cpupower htop intel-gpu-tools powertop -y
# see gpu usage with sudo intel_gpu_top
_ powertop --calibrate
# force powersave mode at all times. It is referred to as BAT for battery, in contrast to AC mode.
# do so by changing settings to "TLP_DEFAULT_MODE=BAT" and "TLP_PERSISTENT_DEFAULT=1":
_vi /etc/default/tlp
_ tlp start
# make sure it is running and check status with
_ systemctl status tlp
_ tlp-stat | l  # all cpu policies and governors should say power and powersave

_ apt install r-base default-jdk -y
# install Rstudio from https://rstudio.com/products/rstudio/download/#download
# packages needed for tidyverse and maybe other things:
_ apt install libcurl4-openssl-dev
_ apt install libssl-dev

# snap app store for linux with non typical apps such as pycharm. run programs with snap run <name>
_ apt install snapd
# classic means not in sandbox
_ snap install pycharm-community --classic
_ snap install code --classic
_ snap install discord mailspring cpufreq
_ snap install julia-mrcinv --classic  # unofficial snap since the official julia snap is not current stable version but long term supported version
_ snap install atom --classic
_ snap install zoom-client
_ snap refresh

_ ln -s /snap/bin/julia{-mrcinv,}  # link julia to the unofficial julia
# ATOM note: link atom julia path to /snap/julia-mrcinv/current/bin/julia and you probably want the fallback rendered "dom"
# install packages
/snap/bin/julia -e 'using Pkg; Pkg.add.(["Revise", "ArgParse", "Statistics", "DifferentialEquations", "DiffEqCallbacks", "LinearAlgebra", "SparseArrays", "Fire", "NamedTupleTools", "DelimitedFiles", "DataStructures", "DataFrames", "Test", "Distributions", "Formatting", "Flux", "Dates", "Logging"])'


# cloud services
_ apt install rclone -y

_ apt install redshift-gtk -y

# qutebrowser workaround for google login: https://github.com/qutebrowser/qutebrowser/issues/5182
# :set -u https://accounts.google.com/* content.headers.user_agent 'Mozilla/5.0 (X11; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0'


_ apt install fonts-firacode
# go to https://github.com/tonsky/FiraCode to find install instructions for various IDEs. 
# install Dark ++ Italic theme in vc code

# bootloader rEFInd, press yes to automatically installing.
_ apt install refind
# then install a minimalistic theme in the folder where the rEFInd executable is located, e.g.
_ ll /boot/efi/EFI/refind/  # assuming this is the location.
_ mkdir /boot/efi/EFI/refind/themes
_ git clone https://github.com/EvanPurkhiser/rEFInd-minimal.git /boot/efi/EFI/refind/themes/rEFInd-minimal
# then add the line "include themes/rEFInd-minimal/theme.conf" at the end:
_vi /boot/efi/EFI/refind/refind.conf
# you can remove "tags" (boot entries) by pressing minus in the boot menu. They can also be restored in the boot menu but not when the minimal theme is active.
# you can boot into them to see where they lead. If there are two for macOS they are just duplicates and one (preboot) can be hidden to avoid clutter.

