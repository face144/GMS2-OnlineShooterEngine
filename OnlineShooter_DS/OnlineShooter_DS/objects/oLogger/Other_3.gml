/// @description Insert description here
// You can write your code in this editor
file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - " + "Exiting game.");
file_text_writeln(log_file);
file_text_write_string(log_file, "-----------------------END-OF-LOG-----------------------");
file_text_close(log_file);