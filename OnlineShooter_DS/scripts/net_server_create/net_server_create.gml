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
	globalvar server,sockets,buffer,player_ids;
	server = network_create_server(netType,netPort,netPlayers);
	sockets = ds_list_create();
	player_ids = ds_list_create();
	buffer = buffer_create(buffSize,buffType,buffAlign);

}
