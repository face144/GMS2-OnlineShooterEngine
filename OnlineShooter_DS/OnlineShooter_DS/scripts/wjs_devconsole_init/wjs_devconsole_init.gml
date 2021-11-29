///@func wjs_devconsole_init()
///@desc Initalize devconsole
function wjs_devconsole_init() {

	globalvar WJS_DEVCONSOLE_COMMANDS;
	WJS_DEVCONSOLE_COMMANDS = ds_map_create();

	globalvar WJS_DEVCONSOLE_ISOPEN;
	WJS_DEVCONSOLE_ISOPEN = false;

	globalvar WJS_DEVCONSOLE_OUTPUT;
	WJS_DEVCONSOLE_OUTPUT = ds_list_create();

	globalvar WJS_LAST_COMMAND;
	WJS_LAST_COMMAND = ds_list_create();

	globalvar WJS_LAST_COMMAND_SIZE_MAX;
	WJS_LAST_COMMAND_SIZE_MAX = 10;

	globalvar WJS_DEVCONSOLE_OUTPUT_COLOUR;
	WJS_DEVCONSOLE_OUTPUT_COLOUR = ds_list_create();

	console_width = 400;
	console_height = 300;

	draw_x = display_get_gui_width() / 2 - console_width / 2;
	draw_y = display_get_gui_height() / 2 - console_height / 2;

	tool_padding = 6;
	tool_x = tool_padding * 2;
	tool_y = tool_padding * 2;
	tool_drag = false;

	drag = false;

	input_string = "";
	last_command_index = -1;



}
