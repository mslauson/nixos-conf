#!/bin/sh
currentPath="$(pwd)"

# sudo nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
#
# sudo nix-channel --update
# nix-shell '<home-manager>' -A install

for file in configuration.nix; do
	sudo rm -rf /etc/nixos/$file
	sudo ln -s "$currentPath"/"$file" /etc/nixos/"$file"
done

# Home manager

rm -rf /home/mslauson/.config/home-manager
ln -s "$currentPath"/home/mslauson /home/mslauson/.config/home-manager
