#!/bin/sh
apt-get install tar
apt-get install git
apt-get install nodejs
apt-get install npm

curl -L https://github.com/voidcode/nshare-chrome-extension.git | tar xz
cd nshare-chrome-extension/nshare-chrome-extension/
nodejs install
npm install -g forever
cd backend/
forever start nshare-demon.js