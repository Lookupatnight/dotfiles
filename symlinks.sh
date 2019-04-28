#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/coding/dotfiles             # dotfiles directory
olddir=~/coding/dotfiles_old      # old dotfiles backup directory
files="vim vimrc zshrc tmux.conf gitconfig"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in HOME
echo -n "Creating $olddir to backup any existing dotfiles in HOME ..."
mkdir -p $olddir
echo "Done"

# change to the dotfiles directory
echo -n "Going to $dir..."
cd $dir
echo "Done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from HOME to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in HOME directory."
    ln -s $dir/$file ~/.$file
done
