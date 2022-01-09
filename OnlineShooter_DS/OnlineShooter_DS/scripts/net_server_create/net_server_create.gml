///@param players the max number of players.
///@param port the port the server will run on.
function net_server_create() {

	//Sets the network type.
	var netType = network_socket_tcp;

	//Gets the amount of players able to join.
	var netPlayers = argument[0];

	//Gets the server port.
	var netPort = argument[1];

	//Sets data types and size.
	var buffSize = 1024;
	var buffType = buffer_grow;
	var buffAlign = 1;

	//Defines global variables to store data.
	globalvar server,sockets,buffer,userID,userIP,connectionKey;
	server = network_create_server(netType,netPort,netPlayers);
	sockets = ds_list_create();
	userID = ds_list_create();
	userIP = ds_list_create();
	buffer = buffer_create(buffSize,buffType,buffAlign);
	connectionKey = 23473;
	
	if (server < 0) {
		file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + "Error creating server.");
		file_text_writeln(log_file);
		return;
	}
	
	file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + "Server created.");
	file_text_writeln(log_file);
}
