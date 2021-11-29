/// @description Insert description here
// You can write your code in this editor
file_text_write_string(log_file, string(current_hour) + ":" + string(current_minute)+ ":" + string(current_second) + " - "
+ "Terminating connection with the server.");
net_client_destroy();
file_text_writeln(log_file);
