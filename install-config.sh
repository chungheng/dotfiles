#!/bin/sh

myexit() {
    echo "$1" >&2
    exit 1
}

[ -e "~/.gitconfig" ] && myexit "~/.gitconfig already exists..."

ln -s $PWD/gitconfig ~/.gitconfig
