/// @description Connects client to server.


ini_open("setup.ini")
server_address = ini_read_string("Server", "Address", "127.0.0.1");
server_port = ini_read_real("Server", "Port", 50000);
ini_close();

net_client_connect(server_address,server_port);
ping = 0;