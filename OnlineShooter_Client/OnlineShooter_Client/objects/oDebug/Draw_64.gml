/// @description Debug UI
// You can write your code in this editor

var yPos = 20

if (instance_exists(oClient)) {
	draw_text(4, yPos,"Connected to: " + server_address);
	yPos+=16;
	draw_text(4, yPos,"ID: " + string(oClient.unique_id));
	yPos+=16;
	draw_text(4, yPos, "Log: " + string(log_file_path));
	yPos+=16;
	if (instance_exists(oPlayer)) draw_text(4, yPos, "Score: " + string(oPlayer.gameScore));
}