///@func wjs_devconsole_draw()
///@desc Draws the DevConsole
function wjs_devconsole_draw() {

	if(!wjs_devconsole_get_open()) return -1;

	var border = 5;

	var gmx = 50 //device_mouse_x_to_gui(0);
	var gmy = 50 //device_mouse_y_to_gui(0);

	var console_colour = c_black;
	var console_alpha = .3;
	var console_text_padding = border;
	var console_box_width = console_width - border;

	var input_height = 28;
	var input_text_colour = c_white;
	var input_text_font = wjs_fnt_DevConsole;
	// DevTools
	var tool_str = 
	"Room: " + room_get_name(room) + " (" + string(room) + ")\n" +
	"Instance Count: " + string(instance_count) + "\n" +
	"FPS: " + string(fps_real);

	var tool_width = string_width(tool_str) + border * 2;
	var tool_height = string_height(tool_str) + border * 2;

	if(gmx > tool_x && gmx < tool_x + tool_width && gmy > tool_y && gmy < tool_y + tool_height) {
		if(mouse_check_button_pressed(mb_left)) {
			//tool_drag = true;
		}	
	}

	if(tool_drag) {
		//tool_x = lerp(tool_x, gmx - tool_width / 2, 0.5);
		//tool_y = lerp(tool_y, gmy - tool_height / 2, 0.5);
	}

	if(mouse_check_button_released(mb_left)) {
		//tool_drag = false;	
	}

	draw_set_alpha(console_alpha);
	draw_set_colour(console_colour);

	draw_rectangle(tool_x - border, tool_y - border, tool_x + tool_width + border, tool_y + tool_height + border, false);
	draw_rectangle(tool_x, tool_y, tool_x + tool_width, tool_y + tool_height, false);

	draw_set_alpha(1);
	draw_set_colour(input_text_colour);
	draw_set_font(input_text_font);
	draw_text(tool_x + border, tool_y + border, tool_str);

	// Devconsole
	if(gmx > draw_x && gmx < draw_x + console_width && gmy > draw_y && gmy < draw_y + console_height) {
		if(mouse_check_button_pressed(mb_left)) {
			drag = true;
		}	
	}

	if(drag) {
		draw_x = lerp(draw_x, gmx - console_width / 2, 0.5);
		draw_y = lerp(draw_y, gmy - console_height / 2, 0.5);
	}

	if(mouse_check_button_released(mb_left)) {
		drag = false;	
	}

	draw_set_alpha(console_alpha);
	draw_set_colour(console_colour);
	draw_rectangle(draw_x, draw_y, draw_x + console_width, draw_y + console_height, false); // Window
	draw_rectangle(draw_x + border, draw_y + console_height - border - input_height, draw_x + console_box_width, draw_y + console_height - border, false); // Input Box
	draw_rectangle(draw_x + border, draw_y + border, draw_x + console_box_width, draw_y + console_height - (border * 2) - input_height, false); // Output Box

	draw_set_alpha(1);
	draw_set_colour(input_text_colour);
	draw_set_font(input_text_font);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text(draw_x + border + console_text_padding, draw_y + console_height - border - (input_height / 2), "> " + input_string);

	// Draw info box text
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	var yy_previous = console_height - (border * 3) - input_height;
	for(var i = 0; i < ds_list_size(WJS_DEVCONSOLE_OUTPUT); i++) {
	    draw_set_colour(WJS_DEVCONSOLE_OUTPUT_COLOUR[| i]);
	
		var yy = yy_previous - string_height_ext(WJS_DEVCONSOLE_OUTPUT[| i], -1, console_box_width) - 2;
	
		if(draw_y + yy < draw_y + border) {
			break;
		}
	
	    draw_text_ext(draw_x + border + console_text_padding, draw_y + yy, WJS_DEVCONSOLE_OUTPUT[| i], -1, console_box_width);
		yy_previous = yy;
	}













}
