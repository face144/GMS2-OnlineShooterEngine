///@param ip the ip of the server to connect
///@param port the port the server is bound
function net_client_connect() {

	//Sets the variables to be globally recognized.
	globalvar clientSocket,serverIp,clientConnected,buffer,localPlayers, serverPlayers, connectionKey;
	
	//Player list
	localPlayers = ds_list_create();
	serverPlayers = ds_list_create();
	
	//Connection key
	connectionKey = 234730;

	//Sets the types of connection socket.
	clientSocket = network_create_socket(network_socket_tcp);

	//Gets the ip of the server being connected to.
	serverIp = argument[0];

	//Checks whether the client is currently connected.
	clientConnected = network_connect(clientSocket,serverIp,argument[1]);
	if (clientConnected < 0) {
		file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + "Failed to connect to server.");
		file_text_writeln(log_file);
	
	} else {
		file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + "Succesfully connected to the server\n");
		file_text_writeln(log_file);
	}
	
	//Sets the global buffer for the client.
	buffer = buffer_create(1024,buffer_grow,1);
	
	//Send conection key
	net_write_server(buffer_u8, 3, buffer_s16, connectionKey);


}
