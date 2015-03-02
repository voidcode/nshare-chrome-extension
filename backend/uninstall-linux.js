var path = require('path');
var Service = require('node-linux').Service;
// Create a new service object
var svc = new Service({
  name:'NshareDemon',
  script: require('path').join(__dirname,'nshare-demon.js')
});

// Listen for the "uninstall" event so we know when it's done.
svc.on('uninstall',function(){
  console.log('Uninstall complete.');
  console.log('The service exists: ',svc.exists);
});

svc.on('error',function(err){
  console.log('ERROR:',err);
})

// Uninstall the service.
svc.uninstall();