//NODE-LINUX--------------------------------------------------------------START
var path = require('path');
var Service = require('node-linux').Service;
var svc = new Service({
	name: 'NshareDemon',
	description: 'IO demon for your Nshare client..',
	script: require('path').join(__dirname,'nshare-demon.js'),
	env: {
      name: "HOME",
      value: process.env["USERPROFILE"] // service is now able to access the user who created its' home directory 
    }
});
svc.on('install', function(){
	svc.start();
});
svc.install();
//NODE-LINUX--------------------------------------------------------------END