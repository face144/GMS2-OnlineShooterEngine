function net_server_destroy() {

	//Destroys the server connection.
	network_destroy(server);

	//Deletes the storage buffer.
	buffer_delete(buffer);

	//Deletes the list of connections.
	ds_list_destroy(sockets);



}
