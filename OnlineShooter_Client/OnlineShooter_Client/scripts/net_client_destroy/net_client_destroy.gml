function net_client_destroy() {

	//Destroys the connection to the server.
	network_destroy(clientSocket);

	//Deletes the storage buffer.
	buffer_delete(buffer);

	//Logger stuff
	file_text_write_string(log_file, string(current_hour) + ":" +
	string(current_minute)+ ":" + string(current_second) + " - " +
	"Succesfully disconnected from the server");
	file_text_writeln(log_file);

}
