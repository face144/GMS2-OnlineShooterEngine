function net_client_destroy() {

	//Destroys the connection to the server.
	network_destroy(clientSocket);

	//Deletes the storage buffer.
	buffer_delete(buffer);


}
