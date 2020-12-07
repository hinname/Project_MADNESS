/// @description Collide
wrap = instance_create_depth(x,y, depth -1000, O_WrapController);

wrap.newX = xPosition;
wrap.newY = yPosition;
wrap.newRoom = roomName;

instance_destroy();
