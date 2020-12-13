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

if(inputting){
	switch(ds_grid[# 1, menu_option[page]]){ // O 1 pega o menu_element_type e menu_option[page] para pegar a opção
		
		case menu_element_type.shift:
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if(hinput != 0) {
				//audio para quando mudar, pode colocar aqui
				ds_grid[# 3, menu_option[page]] += hinput;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length(ds_grid[# 4, menu_option[page]]) -1)
			}
		
			break;
		case menu_element_type.slider:
			switch(menu_option[page]){
				case 0:
					//if(!audio_is_playing(audio_here)){
						//play audio master
					//}
					break;
				case 1: 
					//if(!audio_is_playing(audio_here)){
						//play audio master
					//}
					break;
				case 2:
					//if(!audio_is_playing(audio_here)){
						//play audio master
					//}
					break;
					
			}
		
			var hinput = keyboard_check(global.key_right) - keyboard_check(global.key_left);
			if(hinput != 0) {
			
				ds_grid[# 3, menu_option[page]] += hinput * 0.01 //dividindo por 100 o 0 ou 1;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1) //minimo ou maximo, pegar do array
			}
		
			break;
		case menu_element_type.toggle:
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if(hinput != 0) {
				//audio para quando mudar, pode colocar aqui
				ds_grid[# 3, menu_option[page]] += hinput;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
			}
		
			break;
		case menu_element_type.input:
			var kp = keyboard_lastkey;
			if(kp != vk_enter){
				if(kp != ds_grid[# 3, menu_option[page]]){ //se a tecla for diferente da já setada, toca o audio
					//audio
				}
				ds_grid[# 3, menu_option[page]] = kp;
				variable_global_set(ds_grid[# 2, menu_option[page]], kp);
				inputting = !inputting; //não precisa apertar enter para sair do inputting
			}
			
			break;
	}
}else{
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
}



if(input_enter_p) {
	switch(ds_grid[# 1, menu_option[page]]){ // O 1 pega o menu_element_type e menu_option[page] para pegar a opção
		case menu_element_type.script_runner:
			var func = ds_grid[# 2, menu_option[page]];
			if(func == "new_game"){
				new_game();
			}
			else if(func == "exit_game"){
				exit_game();
			}
			
			break;
			
			
		case menu_element_type.page_transfer: 
			page = ds_grid[# 2, menu_option[page]];
			break;
			
			
		case menu_element_type.shift:
			var shift_value = ds_grid[# 3, menu_option[page]]; //pega o valor do shift no grid;
			
			if(inputting){
				var func = ds_grid[# 2, menu_option[page]];
				if(func == "change_resolution"){
					change_resolution(shift_value);
				}
			}
		
		case menu_element_type.slider:
			var slider_value = ds_grid[# 3, menu_option[page]]; //pega o valor do slider no grid
			
			if(inputting){
				var func = ds_grid[# 2, menu_option[page]];
				if(func == "change_volume"){
					change_volume(slider_value);
				}
			}
			
		case menu_element_type.toggle: 
			var toggle_value = ds_grid[# 3, menu_option[page]]; //pega o valor do toggle no grid
			
			if(inputting){
				var func = ds_grid[# 2, menu_option[page]];
				if(func == "change_window_mode"){
					change_window_mode(toggle_value);
				}
				
			}
			
		case menu_element_type.input:
			inputting = !inputting;
		
	}
	//audio
}
