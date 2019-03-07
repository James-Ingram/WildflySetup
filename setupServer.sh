#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install figlet -y
sudo apt-get install unzip
figlet "Unzip Installed."
sudo apt-get install default-jre -y
figlet "Jave JRE Installed."
sudo apt-get install node.js -y
figlet "Node.js Installed."
sudo apt-get install npm -y
figlet "NPM Installed."
wget "https://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.zip"
unzip wildfly-10.1.0.Final.zip
figlet "Wildfly Unzipped."
rm wildfly-10.1.0.Final/standalone/configuration/standalone.xml
cp bobbeth/standalone.xml wildfly-10.1.0.Final/standalone/configuration/
figlet "Swapped Standalone.xml."
echo "Download your React Project"
echo "Run \"npm update\" Inside the react project (contains the node_module folder), This will take a while"
