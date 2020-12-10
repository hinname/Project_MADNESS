/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//main menu
menu[0] = "New Game";
menu[1] = "Load Game";
menu[2] = "Settings";
menu[3] = "Exit";

enum menu_page {
	load_game,
	settings,
	audio,
	graphics,
	controls,
}

ds_main_menu = create_menu_page(
	["NEW GAME"	,	menu_element_type.script_runner,	new_game()],
	["LOAD GAME",	menu_element_type.page_transfer,	menu_page.load_game],
	["SETTINGS"	,	menu_element_type.page_transfer,	menu_page.settings],
	["EXIT"		,	menu_element_type.script_runner,	exit_game()],
).

ds_settings = create_menu_page(
	["AUDIO"	,	menu_element_type.page_transfer,	menu_page.audio],
	["GRAPHICS"	,	menu_element_type.page_transfer,	menu_page.graphics],
	["CONTROLS"	,	menu_element_type.page_transfer,	menu_page.controls],
	
)
ds_menu_audio = create_menu_page(
	["MASTER"	,	menu_element_type.slider,			change_volume(), 1, [0,1]],
	["SOUNDS"	,	menu_element_type.slider,			change_volume(), 1, [0,1]],
	["MUSIC"	,	menu_element_type.slider,			change_volume(), 1, [0,1]],
	["BACK"		,	menu_element_type.page_transfer,	menu_page.settings]
)
ds_menu_gaphics = create_menu_page(
	["RESOLUTION",	menu_element_type.shift,		change_resolution(), 0, ["960 x 540", "1280 x 720", "1600 x 900", "1920 x 1080"]],
	["WINDOW MODE", menu_element_type.toogle,		change_window_mode(), 1, ["FULLSCREEN", "WINDOWED"]],
	["BACK"		,	menu_element_type.page_transfer,menu_page.settings]
)
ds_menu_controls = create_menu_page(
	["UP"		,	menu_element_type.input,			"key_up",	vk_up],
	["LEFT"		,	menu_element_type.input,			"key_left",	vk_up],
	["RIGHT"	,	menu_element_type.input,			"key_right",vk_up],
	["DOWN"		,	menu_element_type.input,			"key_down",	vk_up],
	["BACK"		,	menu_element_type.page_transfer,	menu_page.settings],
)
