if(keyboard_check(vk_f1) && keyboard_check_pressed(ord("C"))) {
	if(wjs_devconsole_get_open()) {
		last_command_index = -1;
		keyboard_string = "";
		input_string = keyboard_string;
		wjs_devconsole_set_open(false);
	} else {
		keyboard_string = "";
		input_string = keyboard_string;
		wjs_devconsole_set_open(true);
	}
}

if(wjs_devconsole_get_open()) {
	input_string = keyboard_string;
	if(keyboard_check_pressed(vk_enter)) {
		last_command_index = -1;
		wjs_devconsole_add_last_command(input_string);
		wjs_devconsole_command_execute(input_string);
		keyboard_string = "";
		input_string = keyboard_string;
	}
	
	if(keyboard_check_pressed(vk_up)) {
		if(last_command_index < ds_list_size(WJS_LAST_COMMAND)) {
			last_command_index++;
			keyboard_string = wjs_devconsole_get_last_command(last_command_index);
			input_string = keyboard_string;
		}
	}
	
	if(keyboard_check_pressed(vk_down)) {
		if(last_command_index > 0) {
			last_command_index--;
			keyboard_string = wjs_devconsole_get_last_command(last_command_index);
			input_string = keyboard_string;
		}
	}
	
	last_command_index = clamp(last_command_index, 0, WJS_LAST_COMMAND_SIZE_MAX - 1);
}