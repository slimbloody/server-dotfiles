#!/bin/bash

CURRENT_DIR=`pwd`

# backup and install
mkdir $HOME/.dotfiles-backup
# vimrc
if [ -f $HOME/.vimrc ]; then
    echo "Backing up .vimrc"
    mv $HOME/.vimrc $HOME/.dotfiles-backup/
fi
# bashrc
if [ -f $HOME/.bashrc ]; then
    echo "Backing up .bashrc"
    mv $HOME/.bashrc $HOME/.dotfiles-backup/
fi
# inputrc
if [ -f $HOME/.inputrc ]; then
    echo "Backing up .inputrc"
    mv $HOME/.inputrc $HOME/.dotfiles-backup/
fi
# gemrc
if [ -f $HOME/.gemrc ]; then
    echo "Backing up .gemrc"
    mv $HOME/.gemrc $HOME/.dotfiles-backup/
fi
# tmux
if [ -f $HOME/.tmux.conf ]; then
    echo "Backing up .tmux.conf"
    mv $HOME/.tmux.conf $HOME/.dotfiles-backup/
fi
# pip
if [ -f $HOME/.pip/pip.conf ]; then
    echo "Backing up pip.conf"
    mv $HOME/.pip/pip.conf $HOME/.dotfiles-backup/
fi

ln -s $CURRENT_DIR/vimrc $HOME/.vimrc
ln -s $CURRENT_DIR/bashrc $HOME/.bashrc
ln -s $CURRENT_DIR/inputrc $HOME/.inputrc
ln -s $CURRENT_DIR/tmux.conf $HOME/.tmux.conf
ln -s $CURRENT_DIR/gemrc-cn $HOME/.gemrc
if [ ! -d "$HOME/.pip" ]; then
    mkdir $HOME/.pip
fi
ln -s $CURRENT_DIR/pip.conf $HOME/.pip/pip.conf