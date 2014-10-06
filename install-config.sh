#!/bin/sh

myexit() {
    echo "$1" >&2
    exit 1
}

if [ "$(uname)" = "Darwin" ]; then
    [ -e "~/.bash_profile" ] && myexit "~/.bash_profile already exists..."
    ln -s $PWD/bashrc ~/.bash_profile
elif [ "$(expr substr $(uname -s) 1 5)" = "Linux" ]; then
    [ -e "~/.bashrc" ] && myexit "~/.bashrc already exists..."
    ln -s $PWD/bashrc ~/.bashrc
fi
# elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then

[ -e "~/.bashrc_aliases" ] && myexit "~/.bashrc_aliases already exists..."

ln -s $PWD/bash/bashrc_aliases ~/.bashrc_aliases

[ -e "~/.hgrc" ] && myexit "~/.hgrc already exists..."

ln -s $PWD/hgrc ~/.hgrc

[ -e "~/.gitconfig" ] && myexit "~/.gitconfig already exists..."

ln -s $PWD/gitconfig ~/.gitconfig
