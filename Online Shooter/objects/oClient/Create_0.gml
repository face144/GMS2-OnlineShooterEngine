/// @description Connects client to server.
net_client_connect("127.0.0.1",50000);
ping = 0;


//Id verification
if (cl_id == -1)
	show_error("Failed to get player id. Exiting", true);