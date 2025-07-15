#!/bin/sh

# Install homebrew
#
# Install Git?
#
# Install Oh My Zsh
#
# Install Powerlevel10k fonts
#
# Install Powerlevel10k
#
# Configure Powerlevel10k


# Setting up vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./.vimrc ~
vim +PluginInstall +qall

# Setting up tmux
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
# Command diff on mac
sed -i '' '/set -g mouse on/s/^#//g' .tmux.conf.local
