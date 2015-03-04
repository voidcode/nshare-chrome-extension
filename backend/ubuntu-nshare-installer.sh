#!/bin/sh
apt-get install unzip
apt-get install wget
apt-get install tar
apt-get install nodejs
apt-get install npm
apt-get install chromium-browser

wget https://github.com/voidcode/nshare-chrome-extension/archive/master.zip
chmod 655 master.zip
unzip master.zip
cd nshare-chrome-extension-master/
npm install
npm install -g forever
cd backend/
forever start nshare-demon.js
chromium-browser https://chrome.google.com/webstore/detail/nshare/lecapbjobhaloanokngngalcngdpklcf