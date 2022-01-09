/// @description Insert description here
// You can write your code in this editor

instance_destroy(oPlayer)
instance_destroy(oDeathManager)

//Failsafe for bad server shutdown
for (var i = 0; i < ds_list_size(sockets); i++) {
	net_write_client(ds_list_find_value(sockets, i), buffer_u8, 5)
}
