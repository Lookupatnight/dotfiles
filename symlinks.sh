############################
# symlinks.sh
# This script creates symlinks from the HOME directory to any desired dotfiles in the dotfiles directory
############################

########## Variables

dir=~/coding/dotfiles                        # dotfiles directory
olddir=~/coding/dotfiles_old                 # old dotfiles backup directory
files="vim vimrc zshrc tmux.conf gitconfig"  # list of files/folders to symlink in homedir

##########

mkdir -p $olddir
cd $dir
echo "Creating a backup of existing dotfiles in $olddir and creating symlinks to new ones in HOME"
for file in $files; do
    mv ~/.$file $olddir
    echo "$file..."
    ln -s $dir/$file ~/.$file
done
