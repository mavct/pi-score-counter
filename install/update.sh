#!/bin/bash
clear

echo -e "\e[92m** Update started **\e[0m"

echo -e "\e[93mDownloading pi-score-counter from GitHub...\e[0m"
rm -rf ~/pi-score-counter-download
mkdir ~/pi-score-counter-download
cd ~/pi-score-counter-download
wget "https://github.com/TheWhite147/pi-score-counter/archive/master.zip"

echo -e "\e[93mUncompressing zip file...\e[0m"
unzip master.zip -d .

echo -e "\e[93mInstalling Python part (GPIO and game logic)...\e[0m"
cp -f ~/pi-score-counter-download/pi-score-counter-master/game/* ~/pi-score-counter

echo -e "\e[93mInstalling PHP API...\e[0m"
sudo cp -f ~/pi-score-counter-download/pi-score-counter-master/api/* /var/www/html/api

echo -e "\e[92m** Update finished! **\e[0m"