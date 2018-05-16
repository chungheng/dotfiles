#!/bin/sh

myexit() {
    echo "$1" >&2
    exit 1
}

if [ "$(uname)" = "Darwin" ]; then
    path="/usr/local/bin/conda-activate"
    [ -e "$path" ] && myexit "$path already exists..."
    chmod 755 $PWD/conda/conda-activate
    ln -s $PWD/conda/conda-activate $path
fi
