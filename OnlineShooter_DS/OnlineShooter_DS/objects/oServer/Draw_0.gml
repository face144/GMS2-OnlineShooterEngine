/// @description Connected Sockets.
if (instance_exists(oServer))
draw_text(room_width - string_width("Connected:"+string(ds_list_size(sockets))) - 4, 4, "Connected:"+string(ds_list_size(sockets)));