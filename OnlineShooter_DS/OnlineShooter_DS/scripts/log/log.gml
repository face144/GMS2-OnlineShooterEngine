// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function log(){
	wjs_devconsole_output_message("Log file located in: " + environment_get_variable("LOCALAPPDATA") + "/OnlineShooter_Client", c_green);
	wjs_devconsole_output_message(log_file_path, c_green);
}