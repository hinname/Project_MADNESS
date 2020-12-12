/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

/*
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
*/

if(!global.pause) exit;

input_up_p = keyboard_check_pressed(global.key_up);
input_down_p = keyboard_check_pressed(global.key_down);
input_enter_p = keyboard_check_pressed(global.key_enter);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid); //pega o numero de elementos do grid

var ochange = input_down_p - input_up_p;
if(ochange != 0) {
	menu_option[page] += ochange;
	
	if(menu_option[page] > ds_height-1) {
		menu_option[page] = 0;
	}
	if(menu_option[page] < 0) {
		menu_option[page] = ds_height - 1;
	}
}

if(input_enter_p) {
	switch(ds_grid[# 1, menu_option[page]]){ // O 1 pega o menu_element_type e menu_option[page] para pegar a opção
		case menu_element_type.page_transfer: 
			page = ds_grid[# 2, menu_option[page]];
		break;
	}
	//audio
}
