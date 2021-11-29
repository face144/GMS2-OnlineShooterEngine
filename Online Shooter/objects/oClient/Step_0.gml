/// @description Send ping.

//Sends the current time to the server to see how fast it gets back.
net_write_server(buffer_u8,0,buffer_u32,current_time);

#region Movement

if (keyboard_check_pressed(ord("D"))) {
	net_write_server(buffer_u8, cl_id, buffer_u8, 1);
	x += movement_speed;
}

if (keyboard_check_pressed(ord("A"))) {
	net_write_server(buffer_u8, cl_id, buffer_u8, 2);
	x -= movement_speed;
}

#endregion