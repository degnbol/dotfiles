# packages to install
# make sure to have the sources needed
_ cp sources.list /etc/apt/
_ apt update
_ apt upgrade

# generate locale for DK standards so they are available for use.
_ locale-gen en_DK.UTF-8

_ apt install curl wget rename git
_ apt install python-pip python3-pip

_ apt install flatpak -y
# add repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

_ apt install fonts-powerline

_ apt install neovim -y
# install plug-vim https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# power management
_ apt install tlp thermald linux-cpupower htop intel-gpu-tools -y
# see gpu usage with sudo intel_gpu_top

_ apt install r-base julia default-jdk -y
# install Rstudio from https://rstudio.com/products/rstudio/download/#download

# snap app store for linux with non typical apps such as pycharm. run programs with snap run <name>
_ apt install snapd
export PATH="$PATH:/bin/snap"
# classic means not in sandbox
_ snap install pycharm-community --classic
_ snap install code --classic
_ snap install discord mailspring cpufreq
_ snap refresh

# cloud services
_ apt install rclone -y

_ apt install redshift-gtk -y

