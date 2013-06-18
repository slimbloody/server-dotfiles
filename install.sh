#!/bin/bash

CURRENT_DIR=`pwd`

# backup and install
# vimrc
if [ -f $HOME/.vimrc ]; then
    echo "Backup .vimrc"
    mv $HOME/.vimrc $HOME/.vimrc.backup
fi
ln -s $CURRENT_DIR/vimrc $HOME/.vimrc

# bashrc
if [ -f $HOME/.bashrc ]; then
    echo "Backup .bashrc"
    mv $HOME/.bashrc $HOME/.bashrc.backup
fi
ln -s $CURRENT_DIR/bashrc $HOME/.bashrc

# gemrc
if [ -f $HOME/.gemrc ]; then
    echo "Backup .gemrc"
    mv $HOME/.gemrc $HOME/.gemrc.backup
fi
ln -s $CURRENT_DIR/gemrc $HOME/.gemrc

# tmux
if [ -f $HOME/.tmux.conf ]; then
    echo "Backup .tmux.conf"
    mv $HOME/.tmux.conf $HOME/.tmux.conf.backup
fi
ln -s $CURRENT_DIR/tmux.conf $HOME/.tmux.conf