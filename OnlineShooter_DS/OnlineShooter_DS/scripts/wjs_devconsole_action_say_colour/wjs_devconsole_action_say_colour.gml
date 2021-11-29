function wjs_devconsole_action_say_colour(argument0) {
	var args = argument0;

	var str = args[0];

	var r = args[1];
	var g = args[2];
	var b = args[3];

	if(r > 255) {
		wjs_devconsole_output_error("Red value is greater than 255 Red value is set to 255");
		r = 255;
	}

	if(g > 255) {
		wjs_devconsole_output_error("Green value is greater than 255 Green value is set to 255");
		g = 255;
	}

	if(b > 255) {
		wjs_devconsole_output_error("Blue value is greater than 255 Blue value is set to 255");
		b = 255;
	}

	var col = make_colour_rgb(r, g, b);

	wjs_devconsole_output_message(str, col);
	return true;


}
