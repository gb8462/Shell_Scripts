#!/bin/bash

# Basic Script for switching Wallpaper Themes.

clear
echo "Please Select which Themes you would like to use:"
echo "
Choices:
  [1].Blues
  [2].Ninomae Ina'nis
  [3].Dark
"
read -p "Theme: " Themes
# For Blue Theme
if [ "$Themes" == "1" ]; then
  sudo cp -r /home/worm/Programming/WallTheme/Blues/slick-greeter.conf /etc/lightdm/slick-greeter.conf
  cp -r /home/worm/Programming/WallTheme/Blues/waybar/* ~/.config/waybar
  cp -r /home/worm/Programming/WallTheme/Blues/wofi/* ~/.config/wofi
  cp -r /home/worm/Programming/WallTheme/Blues/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
  cp -r /home/worm/Programming/WallTheme/Blues/hyprland.conf ~/.config/hypr/hyprland.conf
  cp -r /home/worm/Programming/WallTheme/Blues/alacritty.toml ~/.config/alacritty.toml
  hyprctl dispatch exit
# For Ina Theme
elif [ "$Themes" == '2' ]; then
  sudo cp -r /home/worm/Programming/WallTheme/Ina/slick-greeter.conf /etc/lightdm/slick-greeter.conf
  cp -r /home/worm/Programming/WallTheme/Ina/waybar/* ~/.config/waybar
  cp -r /home/worm/Programming/WallTheme/Ina/wofi/* ~/.config/wofi
  cp -r /home/worm/Programming/WallTheme/Ina/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
  cp -r /home/worm/Programming/WallTheme/Ina/hyprland.conf ~/.config/hypr/hyprland.conf
  cp -r /home/worm/Programming/WallTheme/Ina/alacritty.toml ~/.config/alacritty.toml
  hyprctl dispatch exit
# For Void Theme
elif [ "$Themes" == '3' ]; then
  sudo cp -r /home/worm/Programming/WallTheme/Void/slick-greeter.conf /etc/lightdm/slick-greeter.conf
  cp -r /home/worm/Programming/WallTheme/Void/waybar/* ~/.config/waybar
  cp -r /home/worm/Programming/WallTheme/Void/wofi/* ~/.config/wofi
  cp -r /home/worm/Programming/WallTheme/Void/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
  cp -r /home/worm/Programming/WallTheme/Void/hyprland.conf ~/.config/hypr/hyprland.conf
  cp -r /home/worm/Programming/WallTheme/Void/alacritty.toml ~/.config/alacritty.toml
  hyprctl dispatch exit
# For Invalid Input
else
  echo "invalid input"
fi

