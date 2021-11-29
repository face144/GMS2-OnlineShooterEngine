// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function list_ids(){
	wjs_devconsole_output_message("List of connected player IDs:", c_white);
	wjs_devconsole_output_message("", c_white);
	
	for (var i = 0; i < ds_list_size(ids) - 1; i++) {
		wjs_devconsole_output_message(string(ds_list_find_value(ids,i)), c_white);
	}
}