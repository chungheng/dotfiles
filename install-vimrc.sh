#!/bin/sh
VIMHOME=~/.vim

myexit() {
    echo "$1" >&2
    exit 1
}

[ -e "$VIMHOME/vimrc" ] && myexit "$VIMHOME already exists..."
[ -e "$VIMHOME" ] && myexit "$VIMHOME already exists..."
[ -e "~/.vimrc" ] && myexit "~/.vimrc already exists..."

ln -s $PWD/vim ~/.vim
ln -s $PWD/vim/vimrc ~/.vimrc

# setup pathogen to manage plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

# setup vim-powerline
cd ~/.vim/bundle
git clone git://github.com/Lokaltog/vim-powerline.git

# setup ctrlp
cd ~/.vim/bundle
git clone git://github.com/kien/ctrlp.vim.git

# setup Python mode
#cd ~/.vim/bundle
#git clone git://github.com/klen/python-mode

# setup jedi-vim
cd ~/.vim/bundle
git clone git://github.com/davidhalter/jedi-vim.git

# Python folding
mkdir -p ~/.vim/ftplugin
wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
