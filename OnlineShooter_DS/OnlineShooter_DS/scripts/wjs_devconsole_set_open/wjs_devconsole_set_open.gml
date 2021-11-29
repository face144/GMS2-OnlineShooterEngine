///@func wjs_devconsole_set_open(bool)
///@arg bool - Sets if the DevConsole is open or not
///@desc Turns on/off the DevConsole
function wjs_devconsole_set_open(argument0) {

	var _bool = argument0;

	WJS_DEVCONSOLE_ISOPEN = _bool;
	return WJS_DEVCONSOLE_ISOPEN;


}
