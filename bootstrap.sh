#!/bin/sh

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

DIR=`pwd`
cd ~/.vim/bundle
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/klen/python-mode.git
git clone https://github.com/Lokaltog/vim-powerline.git
git clone git://github.com/tpope/vim-fugitive.git
git clone git://github.com/airblade/vim-gitgutter.git
cd $DIR

mkdir ~/.vim/colors && \
    curl -LSso ~/.vim/colors/sacolors.vim \
        https://raw.githubusercontent.com/safchain/vimbootstrap/master/sacolors.vim

curl -LSso ~/.vimrc \
    https://raw.githubusercontent.com/safchain/vimbootstrap/master/.vimrc
