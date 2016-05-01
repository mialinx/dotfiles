#!/bin/sh

# vim 
[ -e $HOME/.vim ] || ln -s $HOME/dotfiles/.vim $HOME/.vim 
[ -d $HOME/.vim/backup ] || mkdir $HOME/.vim/backup
[ -d $HOME/.vimbundle ] || mkdir $HOME/.vimbundle
[ -e $HOME/dotfiles/.vim/bundle ] || ln -s $HOME/.vimbundle $HOME/dotfiles/.vim/bundle
if [ -d $HOME/.vimbundle/vundle ]
then
    vim +PluginUpdate +quitall
else
    git clone git://github.com/gmarik/vundle.git  $HOME/.vimbundle/vundle
    vim +PluginInstall +quitall
fi

touch $HOME/.vimrc
grep dotfiles/.vimrc $HOME/.vimrc || echo "source ~/dotfiles/.vimrc" >> $HOME/.vimrc

# bash
touch $HOME/.bashrc
grep dotfiles/.colours $HOME/.bashrc || echo "source ~/dotfiles/.colours" >> $HOME/.bashrc
grep dotfiles/.bashrc $HOME/.bashrc || echo "source ~/dotfiles/.bashrc" >> $HOME/.bashrc

# screen
[ -e $HOME/.screenrc ] || ln -s $HOME/dotfiles/.screenrc $HOME/.screenrc

# tmux
[ -e $HOME/.tmux.conf ] || ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf

# git
[ -e $HOME/.gitconfig ] || ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig 

# xfce4-terminal
[ -e $HOME/.config/xfce4/terminal/terminalrc ] || (mkdir -p $HOME/.config/xfce4/terminal/ && cp $HOME/dotfiles/terminalrc $HOME/.config/xfce4/terminal/terminalrc)

