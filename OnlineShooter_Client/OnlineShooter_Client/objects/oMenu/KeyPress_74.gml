/// @description Insert description here
// You can write your code in this editor

if (string_length(input) < 1)
	server_address = "127.0.0.1"
else
	server_address = input;
net_client_connect(server_address, server_port);
room_goto(room_client);