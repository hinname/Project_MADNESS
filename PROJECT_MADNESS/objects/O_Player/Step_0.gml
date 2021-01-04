/// @description Movement

//Menu esc
if keyboard_check_pressed(global.key_menu){
	room_goto(R_MenuOption);
}

if(!instance_exists(O_WrapController)){

	if keyboard_check(global.key_right) and not place_meeting (x+4, y, O_Wall)
	{
		x += 4;
		image_xscale=1;
		sprite_index = S_Player_Walk	;
		image_speed = 0.1;
	};

	if keyboard_check(global.key_left) and not place_meeting (x-4, y, O_Wall)
	{
		x -= 4;
		image_xscale =-1;
		sprite_index = S_Player_Walk;
		image_speed = 0.1;
	};

	if not keyboard_check(global.key_right) and not keyboard_check(global.key_left) 
	{
		sprite_index = S_Player_Stand;
		image_speed = 0.04;
	};

	if keyboard_check(global.key_right) and keyboard_check(global.key_left)
	{
		sprite_index = S_Player_Stand;
		image_speed = 0.04;
	}

} else {
	sprite_index = S_Player_Stand;
}

