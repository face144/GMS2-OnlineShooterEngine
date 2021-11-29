///@func wjs_devconsole_get_arguments(command_string)
///@arg command_string - The whole command including the command_key and arguments/parameters
///@desc Gets the arguments from a command_string and returns the arguments in an array
function wjs_devconsole_get_arguments(argument0) {

	var command_string = argument0;
	var command_key_length = string_pos(" ", command_string);
	var command_string_length = string_length(command_string);

	command_string = string_copy(command_string, command_key_length + 1, command_string_length - command_key_length + 1) + " ";
	command_string_length = string_length(command_string) + 1;

 
	var args;
	args[0] = "null";

	var arg_stringFlag = true;
	var arg_string = true;
	var arg_length = 0;
	var arg_index = 0;
	var arg_previous = 1;

	for(var i = 0; i < command_string_length; i++) {
		arg_length++;
	
		/*if(string_char_at(command_string, i) == chr(34)) { // chr(34) = "
			arg_stringFlag = !arg_stringFlag;	
			arg_string = true;
		}*/
	
		if(string_char_at(command_string, i) == " " && !arg_stringFlag) {
			var temp_arg = string_copy(command_string, arg_previous, arg_length - 1);
			if(arg_string) {
				var temp_arg_length = string_length(temp_arg);
				args[arg_index] = string_copy(temp_arg, 2, temp_arg_length - 2);
			} else {
				args[arg_index] = real(temp_arg);
			}
		
			arg_index++;
			arg_length = 0;
			arg_previous = i + 1;
			arg_string = false;
		}
	}

	return args;


}
