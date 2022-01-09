/// @description Send ping & Game Commands.

//Sends the current time to the server to see how fast it gets back.
net_write_server(buffer_u8,0,buffer_u32,current_time);

if (spawn_allowed) {
	instance_create_layer(1,1,"Instances",oPlayer);
	spawn_allowed = false;
}


file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + 
"Sending data to the server.");
file_text_writeln(log_file);

#region Disconnect

if (keyboard_check_released(vk_escape)) {
	room_goto(room_menu);
}

#endregion