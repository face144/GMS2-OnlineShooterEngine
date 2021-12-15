/// @description Insert description here
// You can write your code in this editor

keyboard_string = "";
input = keyboard_string;

globalvar server_address;
globalvar server_port;
server_port = 50000;

file_text_write_string(log_file, "---------------------------START-OF-LOG---------------------------")
file_text_writeln(log_file);
file_text_write_string(log_file, "New run on " + string(date_current_datetime()))
file_text_writeln(log_file);