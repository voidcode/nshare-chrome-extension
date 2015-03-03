# Nshare-chrome-extension.
Get Nshare packets in your browser.

This project has to part: 

1. The [Nshare-chrome-extension](https://chrome.google.com/webstore/detail/nshare/lecapbjobhaloanokngngalcngdpklcf) (need to install this)
2. The Nshare-demon ([nshare-demon.js](https://github.com/voidcode/nshare-chrome-extension/blob/master/backend/nshare-demon.js)) (runs on node.js via submodules like [forever](https://www.npmjs.com/package/forever))


#(Install and run) Download then start the demon:
```git clone git@github.com:voidcode/nshare-chrome-extension.git && cd nshare-chrome-extension/backend/ && node nshare-demon.js```

Now your are done... :)

Remenber to install the [chrome-extension](https://chrome.google.com/webstore/detail/nshare/lecapbjobhaloanokngngalcngdpklcf)


#Only download the project.
`git clone git@github.com:voidcode/nshare-chrome-extension.git && cd nshare-chrome-extension/backend/`

#Then, run the demon.
`nodejs nshare-demon.js`

#How to install nodejs on Ubuntu.
`curl -sL https://deb.nodesource.com/setup | sudo bash -`

`sudo apt-get install nodejs`

#Nshare on Android.

Get [NshareOnAndroid](https://play.google.com/store/apps/details?id=com.voidcode.nshare) via google-play.
