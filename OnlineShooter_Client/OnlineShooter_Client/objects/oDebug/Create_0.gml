/// @description Insert description here
// You can write your code in this editor

if (instance_exists(self)) {
	file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + "Dev mode is true. THIS IS A DEBUG TEST.");
	file_text_writeln(log_file);
}
