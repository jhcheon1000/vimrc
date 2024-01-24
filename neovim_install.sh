#!/bin/bash

# if neovim is already installed, remove.
# sudo apt-get remove neovim -y

# if add-apt-repository is not existed, install.
# sudo apt-get install software-properties-common

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update -y
sudo apt-get install neovim -y
