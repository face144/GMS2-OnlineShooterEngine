/// @description Insert description here
// You can write your code in this editor

globalvar server_port, server_max_players, log_file, log_file_path;

log_file = file_text_open_write(string("logs/log_" + string(current_hour) + "h-" + string(current_minute) + "m-" + string(current_second) + "s-" + string(current_day) + "d-" + string(current_month) + "m-" + string(current_year) + "y" + ".txt"));
log_file_path = string("/logs/log_" + string(current_hour) + "h-" + string(current_minute) + "m-" + string(current_second) + "s-" + string(current_day) + "d-" + string(current_month) + "m-" + string(current_year) + "y" + ".txt");


file_text_write_string(log_file, "-----------------------START-OF-LOG-----------------------");
file_text_writeln(log_file);