// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clients(){
	if (!instance_exists(oServer)) {
		wjs_devconsole_output_error("Server is not running!");
		wjs_devconsole_output_message("Start the server before using that command.", c_red);
		return;
	}

	wjs_devconsole_output_message(" ", c_white);
	wjs_devconsole_output_message("Information of connected players:", c_white);
	wjs_devconsole_output_message(" ", c_white);
	
	for (var i = 0; i < ds_list_size(sockets); i++) {
		wjs_devconsole_output_message("-------", c_blue);
		wjs_devconsole_output_message("Socket: " + string(ds_list_find_value(sockets, i)), c_white);
		wjs_devconsole_output_message("IP Address: " + ds_list_find_value(userIP, i), c_white);
		wjs_devconsole_output_message("ID: " + string(ds_list_find_value(userID, i)), c_white);
	}	
}