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
			//Assigning the id of the client and adding it to the list of all IDs.
			var client_id = instance_create_layer(1,1,"Instances",oPlayer);
			ds_list_add(ids,client_id);
			net_write_client(socket,buffer_u8,1,buffer_u8,client_id);
			
		#endregion
		break;
	
		case network_type_disconnect: //A socket has disconnected from the server.
		#region Socket Disconnect
			//Gets the socket of the player.
			var socket = ds_map_find_value(async_load,"socket");
			//Finds the position of the socket in the list.
			var socketPos = ds_list_find_index(sockets,socket);
			//Deletes the socket from the connected list.
			ds_list_delete(sockets,socketPos);
			ds_list_delete(ids,socketPos)
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
