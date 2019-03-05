#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install figlet -y
sudo apt-get install sl
echo "figlet Installed"
figlet "Sir, Sir?! Sir Bobbeth?!" >  ~/.bobbeth
echo "Bobbeth Created"
echo "alias h='figlet \"Hail, Sir Bobbeth!\"'" >> ~/.bashrc
echo "alias hr='figlet \"Hath Thy Man Been Slighted?\"'" >> ~/.bashrc
echo "cat ~/.bobbeth" >> ~/.bashrc
exit
