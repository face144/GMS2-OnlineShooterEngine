///@func wjs_devconsole_action_output_file()
///@desc exports the DevConsole output to the working_directory
function wjs_devconsole_action_output_file() {

	var file_name = "DevConsoleOutput" + string(current_year) + "-"  + string(current_month) + "-" + string(current_day) + "-"  + string(current_hour) + "-"  + string(current_minute) + "-"  + string(current_second) + ".txt";
	var file;

	file = file_text_open_write(working_directory + file_name);
	for(var i = 0; i < ds_list_size(WJS_DEVCONSOLE_OUTPUT); i++) {
		file_text_write_string(file, string(WJS_DEVCONSOLE_OUTPUT[| i]));	
		file_text_writeln(file);
	}

	file_text_close(file);

	if(file_exists(working_directory + file_name)) {
		wjs_devconsole_output_message("Output to file: " + file_name, c_white);
		return true;
	} else {
		wjs_devconsole_output_error("Something went wrong, File was not created.");
		return false;	
	}




}
