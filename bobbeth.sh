#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install figlet -y
sudo apt-get install lolcat -y
sudo apt-get install sl
echo "figlet Installed"
figlet "Sir, Sir?! Sir Bobbeth?!" >  ~/.bobbeth
echo "Bobbeth Created"
echo "alias h='figlet \"Hail, Sir Bobbeth!\"|lolcat'" >> ~/.bashrc
echo "alias help=' help && figlet "Aid Me Bobbeth!"|lolcat'" >> ~/.bashrc
echo "alias hr='figlet \"Hath Thy Man Been Slighted?\"|lolcat'" >> ~/.bashrc
echo "alias hr!='figlet \"I HATH BEEN SLIGHTED!\"|lolcat'" >> ~/.bashrc
echo "cat ~/.bobbeth" >> ~/.bashrc
exit
