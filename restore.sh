#!/bin/sh
# Clone dotfiles in to workspace
mkdir -p $HOME/workspace
git clone https://github.com/nvminhtue/dotfiles.git $HOME/workspace/dotfiles
cd $HOME/workspace/dotfiles

# Restore runtime config
while read f; do
    echo "Copying file $f..."
    cp -rf $f ~/
done < Dotfiles
brew tap homebrew/bundle

echo "Restore dotfiles done!"
