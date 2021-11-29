///@param socket the player socket to send the data
///@param datatype the type of data being sent. (ex. buffer_u8)
///@param data the data being sent that works with the data type.
///@param ... ...
function net_write_client() {

	//Finds the start of the buffer.
	buffer_seek(buffer,buffer_seek_start,0);

	//Writes the given data to the buffer.
	for (a=1;a<argument_count;a+=2){
		buffer_write(buffer,argument[a],argument[a+1]);
	}

	//Sends the data to the client.
	network_send_packet(argument[0],buffer,buffer_tell(buffer));


}
