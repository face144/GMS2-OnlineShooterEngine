/// @description Insert description here
// You can write your code in this editor

#region Movement

	if (keyboard_check(ord("D"))) {
		net_write_server(buffer_u8,1,buffer_s32,oClient.unique_id,buffer_u8,1)
		oPlayer.x += oPlayer.movement_speed;
	}
	
	if (keyboard_check(ord("A"))) {
		net_write_server(buffer_u8,1,buffer_s32,oClient.unique_id,buffer_u8,2)
		oPlayer.x -= oPlayer.movement_speed;
	}
	
	if (keyboard_check(ord("W"))) {
		net_write_server(buffer_u8,1,buffer_s32,oClient.unique_id,buffer_u8,3)
		oPlayer.y -= oPlayer.movement_speed;
	}
	
	if (keyboard_check(ord("S"))) {
		net_write_server(buffer_u8,1,buffer_s32,oClient.unique_id,buffer_u8,4)
		oPlayer.y += oPlayer.movement_speed;
	}

#endregion


#region Shooting

if (mouse_check_button_released(mb_left)) {

	with (instance_create_layer(x, y, "Instances", oBullet)) {
		net_write_server(buffer_u8, 2, buffer_s32, oClient.unique_id, buffer_s16, direction)
	}
	file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + 
	"BOOOOOOOOOM!!!! Nice shot!.");
	file_text_writeln(log_file);

}

#endregion
