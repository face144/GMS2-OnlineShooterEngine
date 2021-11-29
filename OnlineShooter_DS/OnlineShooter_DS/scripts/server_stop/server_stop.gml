// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function server_stop(){
	instance_destroy(oServer);
	instance_destroy(oPlayer);
	wjs_devconsole_output_message("Server stopped.", c_white);
}