#!/bin/sh
currentPath="$(pwd)"

get_available_desktops() {
	for dir in desktop/*/; do echo "$dir"; done
}

desktopChoices=$(get_available_desktops)
# nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager
# sudo nix-channel --update
# nix-shell '<home-manager>' -A install
select desktop in $desktopChoices; do

  chosenDesktopPath ="$currentPath"/"$desktop"

  for file in chosenDesktopPath; do
    sudo rm -rf /etc/nixos/$file
    sudo ln -s "$chosenDesktopPath"/"$file" /etc/nixos/"$file"
  done
done

# Home manager

rm -rf /home/mslauson/.config/home-manager
ln -s "$currentPath"/home/mslauson /home/mslauson/.config/home-manager
