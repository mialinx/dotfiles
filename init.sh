#!/bin/sh

# vim 
[ -e $HOME/.vim ] || ln -s $HOME/dotfiles/.vim $HOME/.vim 
[ -d $HOME/.vim/backup ] || mkdir $HOME/.vim/backup
touch $HOME/.vimrc
grep dotfiles/.vimrc $HOME/.vimrc || echo "source ~/dotfiles/.vimrc" >> $HOME/.vimrc

# bash
touch $HOME/.bashrc
grep dotfiles/.colours $HOME/.bashrc || echo "source ~/dotfiles/.colours" >> $HOME/.bashrc
grep dotfiles/.bashrc $HOME/.bashrc || echo "source ~/dotfiles/.bashrc" >> $HOME/.bashrc

# screen
[ -e $HOME/.screenrc ] || ln -s $HOME/dotfiles/.screenrc $HOME/.screenrc

# git
[ -e $HOME/.gitconfig ] || ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig 
