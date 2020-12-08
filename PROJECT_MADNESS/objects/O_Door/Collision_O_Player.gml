/// @description Collision Door

if keyboard_check(vk_space) {
	var wrap = instance_create_depth(x,y, depth -1000, O_WrapController);

	wrap.newX = xPositionDoor;
	wrap.newY = yPositionDoor;
	wrap.newRoom = roomNameDoor;
}
