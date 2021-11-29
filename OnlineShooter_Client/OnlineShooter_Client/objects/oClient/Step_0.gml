/// @description Send ping.

//Sends the current time to the server to see how fast it gets back.
net_write_server(buffer_u8,0,buffer_u32,current_time);

if (spawn_allowed)
	instance_create_layer(1,1,"Instances",oPlayer);