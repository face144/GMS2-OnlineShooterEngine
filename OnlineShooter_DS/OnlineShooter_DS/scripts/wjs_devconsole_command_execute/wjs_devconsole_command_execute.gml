///@func wjs_devconsole_command_execute(command_string)
///@arg command_string - The whole command including the command_key and arguments/parameters
///@desc Executes the given command and returns the value, if command doesn't exists it will return -1
function wjs_devconsole_command_execute(argument0) {

	var command_string = argument0;
	var command_key = wjs_devconsole_get_command_key(command_string);
	var args = wjs_devconsole_get_arguments(command_string);

	if(wjs_devconsole_command_exists(command_key)) {
		return script_execute(WJS_DEVCONSOLE_COMMANDS[? command_key], args);
	} else {
		wjs_devconsole_output_error("Command doesn't exists!");
		return -1;	
	}



}
