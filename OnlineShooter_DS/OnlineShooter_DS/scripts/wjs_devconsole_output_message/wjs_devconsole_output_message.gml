///@func wjs_devconsole_output_message(str, col)
///@arg str - Message to output
///@arg col - Colour of the message to output
///@desc Outputs a message onto the DevConsole
function wjs_devconsole_output_message(argument0, argument1) {

	var str = argument0;
	var col = argument1;

	ds_list_insert(WJS_DEVCONSOLE_OUTPUT, 0, str);
	ds_list_insert(WJS_DEVCONSOLE_OUTPUT_COLOUR, 0, col);


}
