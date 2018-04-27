#!/bin/bash

cp git-open/git-open /usr/local/bin

#install vundle so that it can be used by vim to install plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
