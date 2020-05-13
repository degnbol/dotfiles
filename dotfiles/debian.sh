# packages to install
# make sure to have the sources needed
sudo cp sources.list /etc/apt/
sudo apt update
sudo apt upgrade

# generate locale for DK standards so they are available for use.
sudo locale-gen en_DK.UTF-8

sudo apt install curl wget
sudo apt install python-pip python3-pip

sudo apt install fonts-powerline

sudo apt install r-base
sudo apt install julia
# install Rstudio from https://rstudio.com/products/rstudio/download/#download

# power management
sudo apt install laptop-mode-tools
sudo apt install linux-cpupower

sudo apt install default-jdk

# snap app store for linux with non typical apps such as pycharm
sudo apt install snapd
# classic means not in sandbox
sudo snap install pycharm-community --classic
sudo snap install code --classic

sudo snap refresh

