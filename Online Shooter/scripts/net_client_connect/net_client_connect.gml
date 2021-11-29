///@param ip the ip of the server to connect
///@param port the port the server is bound
function net_client_connect() {

	//Sets the variables to be globally recognized.
	globalvar clientSocket,serverIp,clientConnected,buffer;

	//Sets the types of connection socket.
	clientSocket = network_create_socket(network_socket_tcp);

	//Gets the ip of the server being connected to.
	serverIp = argument[0];

	//Checks whether the client is currently connected.
	clientConnected = network_connect(clientSocket,serverIp,argument[1]);

	//Sets the global buffer for the client.
	buffer = buffer_create(1024,buffer_grow,1);


}
