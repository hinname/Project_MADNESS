/// @description Collision Door

//Collision Event
if(has_collided != true){
     has_collided = true;
	    if keyboard_check_pressed(global.key_enter) {
			var wrap = instance_create_depth(x,y, depth -1000, O_WrapController);

			wrap.newX = xPositionDoor;
			wrap.newY = yPositionDoor;
			wrap.newRoom = roomNameDoor;
	
		}

     //Set an alarm to reset the has_collided
     //variable to false after 0.2 second.
     alarm[0] = 0.02 * room_speed;
} else {
     /*
     A collision has already been triggered.
     */
}


