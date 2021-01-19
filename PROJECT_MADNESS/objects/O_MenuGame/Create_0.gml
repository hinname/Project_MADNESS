/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

ds_menu_game = create_menu_page(
	["RESUME"	,	menu_element_type.script_runner,	"resume_game"],
	["MAP"	,	menu_element_type.script_runner,	"change_room_menu"],
	["INVENTORY",	menu_element_type.script_runner,	"change_room_menu"],
);

page = 0;
menu_pages = [ds_menu_game];

var i = 0, array_len = array_length(menu_pages);
repeat(array_len){
	menu_option[i] = 0;
	i++;
}

inputting = false;

//AUDIO
//Criar audio group
//audio_group_load(audio_group_here)