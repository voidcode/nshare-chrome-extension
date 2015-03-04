#!/bin/sh
apt-get install wget
apt-get install tar
apt-get install nodejs
apt-get install npm
apt-get install chromium-browser

curl -L https://github.com/voidcode/nshare-chrome-extension/archive/master.zip | tar xz
cd nshare-chrome-extension/nshare-chrome-extension/
npm installls
npm install -g forever
cd backend/
forever start nshare-demon.js

chromium-browser https://chrome.google.com/webstore/detail/nshare/lecapbjobhaloanokngngalcngdpklcf