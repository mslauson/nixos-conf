#!/bin/sh
currentPath="$(pwd)"

get_available_desktops() {
	for dir_path in os/desktop/*/; do 
    trimmed_dir_path="${dir_path%/}"
    desktop_name="${trimmed_dir_path##*/}"
    echo "$desktop_name"; 
  done
  echo "exit"
}
get_available_desktops

desktopChoices=$(get_available_desktops)
# nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager
# sudo nix-channel --update
# nix-shell '<home-manager>' -A install
select computnerName in $desktopChoices; do

  echo $computnerName

  osDirPath="$currentPath"/os
  chosenDesktopPath="$currentPath"/os/desktop/"$computnerName"
  echo $chosenDesktopPath

  # for file in configuration.nix; do
    sudo rm -rf /etc/nixos/*

    sudo ln -s "$osDirPath"/* /etc/nixos/
    sudo ln -s "$chosenDesktopPath"/* /etc/nixos/
  # done

# Home manager

rm -rf /home/mslauson/.config/home-manager
ln -s "$currentPath"/home/mslauson /home/mslauson/.config/home-manager
done
