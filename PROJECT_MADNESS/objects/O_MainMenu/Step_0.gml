/// @description Get Input

var _up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("w"));
var _down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("s"));
var _select = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);

var _move = _down - _up;
if _move != 0 {
	//move the index
	index += _move;
	
	//clamp values
	var _size = array_length_1d(menu);
	
	if index < 0 index = _size - 1; //se ta no start, vai para o final
	else if index >= _size index = 0; //se ta no final, vai para start
}

if _select {
	switch(index) {
		case 0:
			//New Game
			room_goto_next();
		break;
		case 1:
			//Load Game
		break;
		case 2:
			//Options
		break;
		case 3:
			//Exit
			game_end();
		break;
	}
}


