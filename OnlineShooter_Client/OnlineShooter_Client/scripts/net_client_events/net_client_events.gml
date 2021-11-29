function net_client_events() {

	//Gets the data passed in by the connection data. (net_client_connections)
	var data = argument[0];

	//Reads which event id was sent by the server. (The first data sent from the server)
	var event = buffer_read(data,buffer_u8);

	//Checks which type of event has been requested.
	switch(event){
	
		case 0: //Ping Sent.
			//Reads the time sent from the client.
			var serverTime = buffer_read(data,buffer_u32);
			ping = current_time-serverTime;
		break;
		
		case 1: //Recieving ID
			oClient.unique_id = buffer_read(data,buffer_s32);
			oClient.spawn_allowed = true;
		break;
	
	}


}
