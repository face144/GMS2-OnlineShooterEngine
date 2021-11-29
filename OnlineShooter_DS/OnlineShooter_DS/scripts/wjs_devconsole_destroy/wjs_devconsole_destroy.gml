///@func wjs_devconsole_destroy()
///@desc Destroies/Cleans up the devconsole
function wjs_devconsole_destroy() {

	ds_map_destroy(WJS_DEVCONSOLE_COMMANDS);
	ds_list_destroy(WJS_DEVCONSOLE_OUTPUT);
	ds_list_destroy(WJS_DEVCONSOLE_OUTPUT_COLOUR);
	ds_list_destroy(WJS_LAST_COMMAND);


}
