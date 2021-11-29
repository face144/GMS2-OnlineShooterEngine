/// @description Debug UI
// You can write your code in this editor

if (instance_exists(oClient)) {
	draw_text(4,20,"ID: " + string(oClient.unique_id));
	draw_text(4, 36, "Log: " + string(log_file_path));
}