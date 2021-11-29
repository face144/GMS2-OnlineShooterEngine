///@func wjs_devconsole_command_add(command_key, script)
///@arg command_key - What will be used to call the command
///@arg script - The script the command will execute
///@desc Adds a command to the devconsole database
function wjs_devconsole_command_add(argument0, argument1) {

	var command_key = argument0;
	var script = argument1;

	if(!wjs_devconsole_command_exists(command_key)) {
		if(script_exists(script)) {
			ds_map_add(WJS_DEVCONSOLE_COMMANDS, command_key, script);
			wjs_devconsole_output_message("Command " + command_key + " was initalized.", c_white);
			return true;
		}
	}

	wjs_devconsole_output_message("Command " + command_key + " could not be initalized.", c_red);
	return false;



}
