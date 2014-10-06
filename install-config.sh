#!/bin/sh

myexit() {
    echo "$1" >&2
    exit 1
}

[ -e "~/.bashrc" ] && myexit "~/.bashrc already exists..."

ln -s $PWD/bashrc ~/.bashrc

[ -e "~/.bashrc_aliases" ] && myexit "~/.bashrc_aliases already exists..."

ln -s $PWD/bash/bashrc_aliases ~/.bashrc_aliases

[ -e "~/.hgrc" ] && myexit "~/.hgrc already exists..."

ln -s $PWD/hgrc ~/.hgrc

[ -e "~/.gitconfig" ] && myexit "~/.gitconfig already exists..."

ln -s $PWD/gitconfig ~/.gitconfig
