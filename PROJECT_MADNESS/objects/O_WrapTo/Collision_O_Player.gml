/// @description Wrap Next room

//Collision Event
if(has_collided != true){
    has_collided = true;
	var wrap = instance_create_depth(x,y, depth -1000, O_WrapController);

	wrap.newX = xPosition;
	wrap.newY = yPosition;
	wrap.newRoom = roomName;
	

     //Set an alarm to reset the has_collided
     //variable to false after 0.2 second.
     alarm[0] = 0.2 * room_speed;
} else {
     /*
     A collision has already been triggered.
     */
}