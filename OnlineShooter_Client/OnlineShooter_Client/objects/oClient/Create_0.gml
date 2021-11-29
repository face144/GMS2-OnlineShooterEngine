/// @description Connects client to server.

ini_open("setup.ini")
server_address = ini_read_string("Server", "Address", "127.0.0.1");
server_port = ini_read_real("Server", "Port", 50000);
ini_close();

//Logger stuff
file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + "Connecting to server with IP " + server_address + " on port " + string(server_port) + ".");
file_text_writeln(log_file);

net_client_connect(server_address,server_port);
ping = 0;