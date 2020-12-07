/// @description Control Fade

if(room != newRoom){
	fadeLevel += 0.030; 
	if(fadeLevel >= 1) {
		room_goto(newRoom);
		O_Player.x = newX;
		O_Player.y = newY;
	}
}else{
	fadeLevel -= 0.030;
}

if(fadeLevel <= 0 ){
	instance_destroy();
}
