#!/bin/sh

# git pull origin master
while read Dotfiles; do
	echo "Backup file $f..."
	cp -rf $HOME/$f ./
done < Dotfiles
brew bundle dump || echo "brew failed"
echo  "Backup files done, please commit!"

# git add . -A
# git commit -m "Backup at $(date)"
# git push origin master
