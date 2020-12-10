/// @description Menu Data

global.pause		= true;
global.view_width	= camera_get_view_width(view_camera[0]);
global.view_height	= camera_get_view_height(view_camera[0]);

global.key_revert	= ord("X")
global.key_enter	= vk_enter || vk_space;
global.key_left		= ord("A") || vk_left;
global.key_right	= ord("D") || vk_right;
global.key_up		= ord("W") || vk_up;
global.key_down		= ord("S") || vk_down;

display_set_gui_size(global.view_width, global.view_height);


enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toogle,
	input
}

//main menu
menu = [];


index = 0; //menu index position
