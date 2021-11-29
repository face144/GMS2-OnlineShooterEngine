///@func wjs_devconsole_action_say(args)
///@arg args
///@desc shows a message
function wjs_devconsole_action_say(argument0) {

	var args = argument0;

	wjs_devconsole_output_message(args[0], c_white);
	return true;


}
