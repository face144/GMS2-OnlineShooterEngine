wjs_devconsole_init();

wjs_devconsole_set_open(true);

wjs_devconsole_command_add("say", wjs_devconsole_action_say);
wjs_devconsole_command_add("exec", wjs_devconsole_action_exec);
wjs_devconsole_command_add("output_file", wjs_devconsole_action_output_file);
wjs_devconsole_command_add("output_clear", wjs_devconsole_action_output_clear);
wjs_devconsole_command_add("clients", clients);
wjs_devconsole_command_add("server_start", server_start);
wjs_devconsole_command_add("server_stop", server_stop);
wjs_devconsole_command_add("clear", clear);
wjs_devconsole_command_add("log", log);
wjs_devconsole_command_add("help", help);


wjs_devconsole_command_add("say_colour", wjs_devconsole_action_say_colour);

wjs_devconsole_output_clear()
wjs_devconsole_output_message("Type help for a list of commands", c_white);