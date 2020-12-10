/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if select {
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
