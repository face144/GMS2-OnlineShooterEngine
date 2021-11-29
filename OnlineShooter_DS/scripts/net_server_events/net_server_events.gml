function net_server_events() {

	//Gets the data passed in by the connection data. (net_server_connections)
	var data = argument[0];
	var socket = argument[1];

	//Reads which event id was sent by the client. (The first data sent from the client)
	var event = buffer_read(data,buffer_u8);

	//Checks which type of event has been requested.
	switch(event){
	
		case 0: //Ping Request.
			//Reads the time sent from the client.
			var clientTime = buffer_read(data,buffer_u32);
			//Sends the time back to the player.
			net_write_client(socket,buffer_u8,0,buffer_u32,clientTime);
		break;
		
		case 1: //Moving
			var cl_id = buffer_read(data,buffer_u8);
			with(cl_id) {
				switch(buffer_read(data, buffer_u8)) {
					case 1: //Move Right
						x += oUsers.movement_speed;
					break;
					
					case 2: //Move Left
						x -= oUsers.movement_speed;
					break;
					
					case 3: //Move Up
						y -= oUsers.movement_speed;
					break;
					
					case 4: //Move Down
						y += oUsers.movement_speed;
					break;
					
				}
			}
			
	}
}
