/// @description Creates the server.
ini_open("setup.ini");
server_port = ini_read_real("Server", "Port", 50000);
server_max_players = ini_read_real("Server", "Port", 10);
ini_close();

net_server_create(server_max_players,server_port);