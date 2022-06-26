#!/bin/sh 

# Copyright (C) 2022 Sourav 'TheFallnn' Gope

FILE="$PWD/violet.xml"
if [[  -f "$FILE" ]]; 
then	
echo -e "Moving the theme file to default styles location"
sleep 2s
sudo cp $FILE /usr/share/gtksourceview-4/styles/
echo -e "installation finished"
sleep 2s
	
else
echo -e "greping theme xml from github"
sudo curl https://raw.githubusercontent.com/thefallnn/Ultra-Violet-Gedit-Theme/main/violet.xml --output /usr/share/gtksourceview-4/styles/violet.xml
echo -e "installation finished"
sleep 2s
fi
exit
