#!/bin/sh

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install Git?
brew install git
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install Powerlevel10k
brew install powerlevel10k
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
# Configure Powerlevel10k  (Just run this to install fonts)
p10k configure
cp ./.p10k.zsh ~

# Setting up vim
brew install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./.vimrc ~
vim +PluginInstall +qall

# Setting up tmux
cd ~
brew install tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
# Command diff on mac
sed -i '' '/set -g mouse on/s/^#//g' .tmux.conf.local


# Enable Hidden Files in Finder by Default
defaults write com.apple.finder AppleShowAllFiles true
defaults write com.apple.finder ShowPathbar true
defaults write com.apple.Dock tilesize -int 38 && killall -HUP Dock
osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'
