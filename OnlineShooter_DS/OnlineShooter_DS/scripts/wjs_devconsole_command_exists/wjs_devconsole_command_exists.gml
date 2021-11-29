///@func wjs_devconsole_command_exists(command_key)
///@arg command_key - Command to check
///@desc Determines if a command exists
function wjs_devconsole_command_exists(argument0) {

	var command_key = argument0;

	return ds_map_exists(WJS_DEVCONSOLE_COMMANDS, command_key);


}
