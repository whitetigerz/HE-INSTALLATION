#!/bin/bash

#colors
cyan='\033[1;36m'
red='\033[1;31m'
blue='\033[1;34m'

clear
echo -e "$blue Setting Up HiddenEye For You Please Wait"
cd $HOME
echo -e ""
echo -e "$red Updating And Upgrading Packages"
sleep 2
pkg up -y
echo ""
echo ""
echo -e "$cyan Installing Requirements"
sleep 2
pkg install wget php python python-dev curl -y
sleep 1
echo ""
echo ""
echo -e "$blue Cloning HiddenEye Termux Official Repo"
echo ""
git clone -b Termux-Support-Branch https://github.com/DarkSecDevelopers/HiddenEye.git
echo ""
echo ""
echo -e "$cyan Installing Python Requirements"
echo ""
python -m pip install wget==3.2
echo ""
echo ""
sleep 2
echo -e "$blue Giving Finishing Touch Please Wait"
wget https://git.io/fjzh2
mv fjzh2 /data/data/com.termux/files/usr/bin/hiddeneye
chmod +x /data/data/com.termux/files/usr/bin/hiddeneye
echo ""
echo ""
echo -e "$red Setup Complete"
figlet Prince Yasin |lolcat|lolcat
hiddeneye
cd
hiddeneye

