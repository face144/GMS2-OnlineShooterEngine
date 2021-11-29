///@func wjs_devconsole_action_exec(args)
///@arg fname - File name to read
///@desc Excutes all commands in a file
function wjs_devconsole_action_exec(argument0) {

	var args = argument0;
	if(!is_string(args[0])) {
		wjs_devconsole_output_error("Something went wrong! File could not be found.");
		return false;
	}
	var fname = working_directory + args[0];
	var commands;

	file = file_text_open_read(fname);
	if(file == -1) {
		wjs_devconsole_output_error("Something went wrong! File could not be found.");
	    return -1;
	}

	var num = 0; 
	var readFlag = true;
	while(!file_text_eof(file)) {
	    commands[num] = file_text_read_string(file);
	    file_text_readln(file);
	    if(commands[num] == "/*") {
	        readFlag = false;
	    } else if(commands[num] = "*/") {
	        readFlag = true;
	    }
    
	    if(commands[num] != "//" && commands[num] != "" && commands[num] != "*/" && commands[num] != " " && readFlag) {
	       num++;
	    }
	}

	for(var i = 0; i < array_length_1d(commands); i++) {
		wjs_devconsole_command_execute(commands[i]);	
	}


}
