function net_server_destroy() {

	//Destroys the server connection.
	network_destroy(server);

	//Deletes the storage buffer.
	buffer_delete(buffer);

	//Deletes the list of connections.
	ds_list_destroy(sockets);
	
	ds_list_destroy(userID);

	ds_list_destroy(userIP);
	
	file_text_open_write(log_file)
	file_text_write_string(log_file,string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + "Server is offline.");
	file_text_writeln(log_file);
	file_text_close(log_file)

}
