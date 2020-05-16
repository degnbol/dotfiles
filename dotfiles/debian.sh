# packages to install
# make sure to have the sources needed
sudo cp sources.list /etc/apt/
sudo apt update
sudo apt upgrade

# generate locale for DK standards so they are available for use.
sudo locale-gen en_DK.UTF-8

sudo apt install curl wget rename git
sudo apt install python-pip python3-pip

sudo apt install flatpak -y
# add repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo apt install fonts-powerline

sudo apt install neovim -y
# install plug-vim https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# power management
sudo apt install laptop-mode-tools linux-cpupower htop intel-gpu-tools -y
# see gpu usage with sudo intel_gpu_top

sudo apt install r-base julia default-jdk -y
# install Rstudio from https://rstudio.com/products/rstudio/download/#download

# snap app store for linux with non typical apps such as pycharm. run programs with snap run <name>
sudo apt install snapd
# classic means not in sandbox
sudo snap install pycharm-community --classic
sudo snap install code --classic
sudo snap refresh

# cloud services
sudo apt install rclone -y

sudo apt install thunderbird -y
sudo apt install redshift-gtk -y

