!/usr/bin/env bash
# Created by: Evan Beaudoin
# Creates on Feb 23
# AWS Debian Linux .dotfiles and setup

# echo Update and upgrade system
sudo apt-get update -y
sudo apt-get dist-upgrade -y

# load some programs
echo Load programs
sudo apt remove w3m -y
sudo apt install gh -y
sudo apt install stow -y

# install Neovim from source
mkdir temp
cd temp

sudo apt-get install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
cd ..
sudo rm -r ./temp

# install languages
curl -fsSL https://bun.sh/install | bash
sudo apt install -y default-jdk
