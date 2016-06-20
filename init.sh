#!/bin/sh

# vim 
[ -e ~/.vim ] || ln -s ~/dotfiles/.vim ~/.vim 
[ -d ~/.vim/backup ] || mkdir ~/.vim/backup
[ -d ~/.vimbundle ] || mkdir ~/.vimbundle
[ -e ~/dotfiles/.vim/bundle ] || ln -s ~/.vimbundle ~/dotfiles/.vim/bundle
if [ -d ~/.vimbundle/vundle ]
then
    vim +PluginUpdate +quitall
else
    git clone git://github.com/gmarik/vundle.git  ~/.vimbundle/vundle
    vim +PluginInstall +quitall
fi

touch ~/.vimrc
grep dotfiles/.vimrc ~/.vimrc || echo "source ~/dotfiles/.vimrc" >> ~/.vimrc

# bash
touch ~/.bashrc
grep dotfiles/.colours ~/.bashrc || echo "source ~/dotfiles/.colours" >> ~/.bashrc
grep dotfiles/.bashrc ~/.bashrc || echo "source ~/dotfiles/.bashrc" >> ~/.bashrc

# screen
[ -e ~/.screenrc ] || ln -s ~/dotfiles/.screenrc ~/.screenrc

# tmux
[ -e ~/.tmux.conf ] || ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# git
[ -e ~/.gitconfig ] || ln -s ~/dotfiles/.gitconfig ~/.gitconfig 

# xfce4-terminal
[ -e ~/.config/xfce4/terminal/terminalrc ] || (mkdir -p ~/.config/xfce4/terminal/ && cp ~/dotfiles/terminalrc ~/.config/xfce4/terminal/terminalrc)

# flake8
[ -e ~/.flake8 ] || ln -s ~/dotfiles/.flake8 ~/.flake8
