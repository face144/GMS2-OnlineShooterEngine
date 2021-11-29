///@func wjs_devconsole_get_last_command(index)
///@arg index - How far to go back
///@desc Gets the last commmnad at the given index
function wjs_devconsole_get_last_command(argument0) {

	var index = argument0;

	if(index > ds_list_size(WJS_LAST_COMMAND) - 1) index = ds_list_size(WJS_LAST_COMMAND) - 1;
	if(index < 0) index = 0;

	return WJS_LAST_COMMAND[| index];


}
