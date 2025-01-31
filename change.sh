#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cat vim.txt > ~/.vimrc

echo " ** vimrc changed succesfully."

sudo apt install zsh

mkdir -p ~/.zshrc



exit 0
