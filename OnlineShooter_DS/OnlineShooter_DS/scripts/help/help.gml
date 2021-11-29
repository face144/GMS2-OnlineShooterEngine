// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function help(){
	wjs_devconsole_output_message("List of avaliable commands:", c_blue);
	wjs_devconsole_output_message("server_start - Starts the server", c_white);
	wjs_devconsole_output_message("server_stop - Stops the server", c_white);
	wjs_devconsole_output_message("clients - Shows details of connected clients.", c_white);
	wjs_devconsole_output_message("clear - Clears the screen", c_white);	
	wjs_devconsole_output_message("log - Shows log file path", c_white);	
	
	wjs_devconsole_output_message("help - Displays this texts", c_white);
	wjs_devconsole_output_message(" ", c_white);
}