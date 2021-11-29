///@func wjs_devconsole_add_last_command(input_string)
///@arg input_string - command to add to the last
///@desc Adds to the last command list
function wjs_devconsole_add_last_command(argument0) {

	var input_string = argument0;

	ds_list_insert(WJS_LAST_COMMAND, 0, input_string);
	if(ds_list_size(WJS_LAST_COMMAND) > WJS_LAST_COMMAND_SIZE_MAX - 1) {
		ds_list_delete(WJS_LAST_COMMAND, WJS_LAST_COMMAND_SIZE_MAX);
	}


}
