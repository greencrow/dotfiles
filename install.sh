#!/bin/bash

BASE=$(pwd)

# zsh
rm -rf $HOME/.zshrc
rm -rf $HOME/.shpotify.cfg
ln -sf $BASE/ZSH/zshrc $HOME/.zshrc
ln -sf $BASE/ZSH/shpotify.cfg $HOME/.shpotify.cfg

# vim
mkdir -p ~/.vim/autoload
curl --insecure -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim
rm -rf $HOME/.vimrc
rm -rf $HOME/.vim/colors
ln -sf $BASE/VIM/vimrc $HOME/.vimrc
ln -sf $BASE/VIM/colors $HOME/.vim/colors

# nvim
mkdir -p $HOME/.config
rm -rf ~/.config/nvim
ln -sf $HOME/.vim $HOME/.config/nvim
ln -sf $BASE/VIM/vimrc $HOME/.config/nvim/init.vim

# tmux
rm -rf $HOME/.tmux.conf
ln -sf $BASE/TMUX/tmux.conf $HOME/.tmux.conf

