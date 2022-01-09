/// @description Creates the server.
ini_open("setup.ini");
server_port = ini_read_real("Server", "Port", 50000);
server_max_players = ini_read_real("Server", "Port", 10);
ini_close();

file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + "Creating server on port " + string(server_port) + ".");
file_text_writeln(log_file);
net_server_create(server_max_players,server_port);

instance_create_layer(0, 0, "Instances", oDeathManager);