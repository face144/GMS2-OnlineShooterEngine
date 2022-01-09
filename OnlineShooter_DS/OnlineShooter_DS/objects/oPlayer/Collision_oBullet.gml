/// @description Insert description here
// You can write your code in this editor

gameScore++
net_write_client(ds_list_find_index(userID, id), buffer_u8, 2, buffer_s8, gameScore);