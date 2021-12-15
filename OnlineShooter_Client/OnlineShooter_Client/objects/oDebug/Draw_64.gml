/// @description Debug UI
// You can write your code in this editor

if (instance_exists(oClient)) {
	draw_text(4, 20,"Connected to: " + server_address);
	draw_text(4, 36,"ID: " + string(oClient.unique_id));
	draw_text(4, 52, "Log: " + string(log_file_path));
}