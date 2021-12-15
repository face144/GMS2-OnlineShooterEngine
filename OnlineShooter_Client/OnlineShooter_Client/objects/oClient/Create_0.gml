/// @description Connects client to server.

ini_open("setup.ini")
server_address = "127.0.0.1";
server_port = 50000;

//Logger stuff
file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + "Connecting to server with IP " + server_address + " on port " + string(server_port) + ".");
file_text_writeln(log_file);

/*if (!net_client_connect(server_address,server_port)) {
	show_message("Failed to connect to server.", false);
	room_goto(room_menu);
}*/
ping = 0;