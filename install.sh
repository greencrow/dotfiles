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

# tmux
rm -rf $HOME/.tmux.conf
ln -sf $BASE/tmux.conf $HOME/.tmux.conf
