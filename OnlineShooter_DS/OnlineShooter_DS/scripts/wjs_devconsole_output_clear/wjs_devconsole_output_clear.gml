///@func wjs_devconsole_output_clear()
///@desc Clears the DevConsole
function wjs_devconsole_output_clear() {

	var size = ds_list_size(WJS_DEVCONSOLE_OUTPUT);
	ds_list_clear(WJS_DEVCONSOLE_OUTPUT);
	ds_list_clear(WJS_DEVCONSOLE_OUTPUT_COLOUR);
	return size;



}
