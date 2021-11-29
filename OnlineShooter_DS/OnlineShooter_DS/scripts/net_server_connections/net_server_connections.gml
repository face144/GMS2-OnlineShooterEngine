function net_server_connections() {

	//Gets the type of data that has been sent to the server.
	var dataType = ds_map_find_value(async_load,"type");

	//Checks the data if it complies with the cases.
	switch (dataType){
	
		case network_type_connect: //A new socket has connected to the server.
		#region Socket Connection
			//Gets the socket of the player.
			var socket = ds_map_find_value(async_load,"socket");
			//Adds the socket to the list of connected sockets.
			ds_list_add(sockets,socket);
			//Assigning the id of the client and adding it to the list of all userID.
			var client_id = instance_create_layer(1,1,"Instances",oPlayer);
			ds_list_add(userID, client_id);
			var ip_address = ds_map_find_value(async_load, "ip")
			ds_list_add(userIP, ip_address)	
			net_write_client(socket,buffer_u8,1,buffer_s32,client_id);
			
			file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + "User with IP " + ip_address + " has connected to the server.");
			file_text_writeln(log_file);
			
			wjs_devconsole_output_message("User with IP " + ip_address + " has connected to the server.", c_green);
			
		#endregion
		break;
	
		case network_type_disconnect: //A socket has disconnected from the server.
		#region Socket Disconnect
			//Gets the socket of the player.
			var socket = ds_map_find_value(async_load,"socket");
			//Finds the position of the socket in the list.
			var socketPos = ds_list_find_index(sockets,socket);
			var playerID = ds_list_find_value(userID,socketPos);
			with(playerID) {
				instance_destroy(); //Something is wrong with this.
									//I don't know what it is.
			}
			
			file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + "User with IP " + ds_list_find_value(userIP,socketPos) + " has disconnected from the server.");
			file_text_writeln(log_file);
			
			wjs_devconsole_output_message("User with IP " + ds_list_find_value(userIP,socketPos) + " has disconnected from the server.", c_yellow);
			
			//Deletes the socket from the connected list.
			ds_list_delete(sockets,socket);
			ds_list_delete(userID,socket);
			ds_list_delete(userIP,socket);
			
		#endregion
		break;
	
		case network_type_data: //Data has been sent to the server.
		#region Recieve Data
			//Reads the data that has been sent to the server.
			var data = ds_map_find_value(async_load,"buffer");
			//Gets the socket of the player that is sending the data.
			var socket = ds_map_find_value(async_load,"id");
			//Find the start of the data.
			buffer_seek(buffer,buffer_seek_start,0);
			//Passes information into a script to process the data.
			net_server_events(data,socket);
		#endregion
		break;
	
	}
		


}
