/// @description Insert description here
// You can write your code in this editor

globalvar server_address;
globalvar server_port;

file_text_write_string(log_file, "---------------------------START-OF-LOG---------------------------")
file_text_writeln(log_file);
file_text_write_string(log_file, "New run on " + string(date_current_datetime()))
file_text_writeln(log_file);