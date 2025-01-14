#!/bin/bash
set -e

echo "Installing vim"
sudo apt install vim

echo "Setting up the aliases"
cp .bash_aliases ~/.bash_aliases

echo "Install git"
sudo apt install git

echo "Install fzf"
sudo apt install fzf
cp .fzf_bash ~/.fzf_bash

echo "Setup bashrc extras"
cat .bashrc_extras >> ~/.bashrc

git config --global user.email "contact@nicu.dev"
git config --global user.name "Nicu Reut"

echo "install ncdu"
sudo apt install ncdu

echo "Install ripgrep"
sudo apt install ripgrep

echo "Install httpie"
sudo apt install httpie

echo "Install docker"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker $USER
newgrp docker
sudo systemctl enable docker

sudo apt install python-pygments
sudo apt install net-tools

sudo apt install tmux
cp .tmux.conf ~/.tmux.conf
