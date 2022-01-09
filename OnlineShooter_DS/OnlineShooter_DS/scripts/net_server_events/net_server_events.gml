function net_server_events() {

	//Gets the data passed in by the connection data. (net_server_connections)
	var data = argument[0];
	var socket = argument[1];
	var client_ID;

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
		
		case 1: //Movement
			//Read the ID
		client_ID = buffer_read(data,buffer_s32);
			//Decodes the movement type
			switch(buffer_read(data,buffer_u8)) {
				
				case 1:
					with (client_ID)
						x += oPlayer.movement_speed;
				break;
				
				case 2:
					with (client_ID)
						x -= oPlayer.movement_speed;
				break;
				
				case 3:
					with (client_ID)
						y -= oPlayer.movement_speed;
				break;
				
				case 4:
					with (client_ID)
						y += oPlayer.movement_speed;
				break;
				}
				
				//Send info to all players (Maybe move code below inside each case above?)
				var index = ds_list_find_index(userID, client_ID);
				with(client_ID) {
					for (var i = 0; i < ds_list_size(sockets); i++) {
						if (i != index) {
							var tempSocket = ds_list_find_value(sockets, i)
							net_write_client(tempSocket, buffer_u8, 3, buffer_s32, client_ID,
														 buffer_u16, x, buffer_u16, y);
						
						}
					}
				}
				
				
		break;
			
		/*case 2: //Disconnect signal
			var client_ID = buffer_read(data,buffer_s32);
			with(client_ID) {
				instance_destroy();
				show_debug_message("Player with ID " + string(client_ID) + " has disconnected.");
			}
			//Gets the socket of the player.
			var socket = ds_map_find_value(async_load,"socket");
			//Finds the position of the socket in the list.
			var socketPos = ds_list_find_index(sockets,socket);
			//Deletes the socket from the connected list.
			ds_list_delete(sockets,socketPos);
			ds_list_delete(userID,socketPos)
		break;*/
		
		case 2: //Shooting
			client_ID = buffer_read(data,buffer_s32);
			with(client_ID)
					var bulletID = instance_create_layer(self.x, self.y, "Instances", oBullet);
			
			with (bulletID)
				direction = buffer_read(data, buffer_s16);
				break;
				
		case 3:
			if (buffer_read(data, buffer_s16) != connectionKey) {
				net_write_client(socket, buffer_u8, 6)
				network_destroy(socket);
			}
			break;
		
	}
}
