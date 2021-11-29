///@param datatype the type of data being sent. (ex. buffer_u8)
///@param data the data being sent that works with the data type.
///@param ... ...
function net_write_server() {

	//Finds the start of the buffer.
	buffer_seek(buffer,buffer_seek_start,0);

	//Writes the given data to the buffer.
	for (a=0;a<argument_count;a+=2){
		buffer_write(buffer,argument[a],argument[a+1]);
	}

	//Sends the data to the server.
	network_send_packet(clientSocket,buffer,buffer_tell(buffer));


}
