///@func wjs_devconsole_output_error(str)
///@arg str - Message to output
///@desc Outputs a message onto the DevConsole
function wjs_devconsole_output_error(argument0) {

	var str = "Error: " + argument0;
	var col = c_red;

	ds_list_insert(WJS_DEVCONSOLE_OUTPUT, 0, str);
	ds_list_insert(WJS_DEVCONSOLE_OUTPUT_COLOUR, 0, col);


}
