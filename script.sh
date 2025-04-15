#!/bin/bash

# Basic Script for switching Wallpaper Themes.

clear
echo "Please Select which Themes you would like to use:"
echo "| [1]Chill | [2]Ninomae Ina'nis |"
read -p "Theme: " Themes
if [ "$Themes" == "1" ]; then
  cp -r /home/worm/Programming/WallTheme/Blues/waybar/* ~/.config/waybar
  cp -r /home/worm/Programming/WallTheme/Blues/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
  sudo cp -r /home/worm/Programming/WallTheme/Blues/slick-greeter.conf /etc/lightdm/slick-greeter.conf
elif [ "$Themes" == '2' ]; then
  cp -r /home/worm/Programming/WallTheme/Ina/waybar/* ~/.config/waybar
  cp -r /home/worm/Programming/WallTheme/Ina/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
  sudo cp -r /home/worm/Programming/WallTheme/Ina/slick-greeter.conf /etc/lightdm/slick-greeter.conf
else
  echo "invalid input"
fi

