#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install figlet -y
echo "figlet Installed"
figlet "Sir, Sir?! Sir Bobbeth?!" >  ~/.bobbeth
echo "Bobbeth Created"
echo "cat ~/.bobbeth" >> ~/.bashrc
exit
