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
			ds_list_add(localPlayers, oClient.id);
			ds_list_add(serverPlayers, oClient.unique_id)
			break;
		
		case 2: //Recieving scores
			if (instance_exists(oPlayer))
				oPlayer.gameScore = buffer_read(data, buffer_s8);
			break;
			
		case 3: //Position update
			var index = ds_list_find_index(serverPlayers, buffer_read(data, buffer_s32));
			
			if (index != -1)
				with (ds_list_find_value(localPlayers, index)) {
					x = buffer_read(data, buffer_u16);
					y = buffer_read(data, buffer_u16);
				}
			
			break;
			
			
		case 4: //Recieve all players info	
			with (instance_create_layer(0, 0, "Instances", oEnemy)) {
				uniqueID = buffer_read(data, buffer_s32);
				ds_list_add(localPlayers, id);
				ds_list_add(serverPlayers, uniqueID);		
			}
			
			break;
			
		case 5: //Server shutdown
			net_client_destroy();
			room_goto(room_menu);
			break;
			
		case 6: //Game is not genuine
			show_message("Your game has been compromised. Please do a full reinstall.");
			net_client_destroy();
			game_end();
			break;
			
	}


}
