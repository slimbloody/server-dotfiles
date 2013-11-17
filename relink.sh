#!/bin/bash

CURRENT_DIR=`pwd`

# backup and install
mkdir .dotfiles-backup
# vimrc
if [ ! -f $HOME/.vimrc ]; then
    echo "Relinking .vimrc"
    ln -s $CURRENT_DIR/vimrc $HOME/.vimrc
fi
# bashrc
if [ ! -f $HOME/.bashrc ]; then
    echo "Relinking .bashrc"
    ln -s $CURRENT_DIR/bashrc $HOME/.bashrc
fi
# input
if [ ! -f $HOME/.inputrc ]; then
    echo "Relinking .inputrc"
    ln -s $CURRENT_DIR/inputrc $HOME/.inputrc
fi
# gemrc
if [ ! -f $HOME/.gemrc ]; then
    echo "Relinking .gemrc"
    ln -s $CURRENT_DIR/tmux.conf $HOME/.tmux.conf
fi
# tmux
if [ ! -f $HOME/.tmux.conf ]; then
    echo "Relinking .tmux.conf"
    ln -s $CURRENT_DIR/gemrc $HOME/.gemrc
fi