///@func wjs_devconsole_get_command_key(command_string)
///@arg command_string - The whole command including the command_key and arguments/parameters
///@desc Gets the command_key from the string
function wjs_devconsole_get_command_key(argument0) {

	var command_string = argument0;

	var command_string_length = string_pos(" ", command_string) - 1;

	var command_key;
	if(command_string_length != -1) {
		command_key = string_copy(command_string, 1, command_string_length);
	} else {
		command_key = command_string;
	}
       
	return command_key;


}
