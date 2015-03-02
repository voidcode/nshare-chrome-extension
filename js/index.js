$(function(){
	var apiroot = 'http://localhost:8091';
	//packetlist->top->clicked
	$('.packetlist .top').on('click', function(event){
		$('.packetlist').hide('fast');
		$('.settingsview').show('fast');
	});
	//settingsview->top->clicked
	$('.settingsview .top').on('click', function(event){
		$('.settingsview').hide('fast');
		$('.packetlist').show('fast');
	});
	function newPacketListItem(item){
		return '<a href="'+item.url+'" target="_blank">'+
					'<div class="item">'+
	        			'<div class="headline">From '+item.fromip+'</div>'+
	        			'<div class="body">'+item.url+'</div>'+
	        		'</div>'+
	        	'</a>';
	}
	function fetchPackets(){
		$.ajax({
			url: apiroot + '/nshare/packets'
		}).done(function(packets){
			var holder='';
			if(packets.length >0){
				for(var i=0; i<packets.length; i++){
					holder += newPacketListItem(packets[i]);
				}
			} else {
				holder += '<div class="no-packets">Empty</div>';
				
			}
			$('.packetlist .center').html(holder);
		});
	}
	//inti
	fetchPackets();
	$('.packetlist .top').on('click', function(event){	
		fetchPackets();
	});
	$('.settingsview .center .btnClearPackets').on('click', function(event){	
		$.ajax({
			url: apiroot + '/nshare/clear',
			type: 'post'
		}).done(function(packets){
			fetchPackets();
			$('.settingsview').hide('fast');
			$('.packetlist').show('fast');
		});
	});

});
