/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum menu_page {
	main,
	//load_game,
	settings,
	audio,
	graphics,
	controls,
}

ds_menu_options = create_menu_page(
	["RESUME"	,	menu_element_type.script_runner,	"resume_game"],
	//["LOAD GAME",	menu_element_type.page_transfer,	menu_page.load_game],
	["SETTINGS"	,	menu_element_type.page_transfer,	menu_page.settings],
	["MAIN MENU",	menu_element_type.script_runner,	"change_menu_room"],
	["EXIT DESKTOP"		,	menu_element_type.script_runner,	"exit_game"]
);

ds_menu_settings = create_menu_page(
	["AUDIO"	,	menu_element_type.page_transfer,	menu_page.audio],
	["GRAPHICS"	,	menu_element_type.page_transfer,	menu_page.graphics],
	["CONTROLS"	,	menu_element_type.page_transfer,	menu_page.controls],
	["BACK"		,	menu_element_type.page_transfer,	menu_page.main],
	
);
ds_menu_audio = create_menu_page(
	["MASTER"	,	menu_element_type.slider,			"change_volume", 0.5, [0,1]],
	["SOUNDS"	,	menu_element_type.slider,			"change_volume", 0.2, [0,1]],
	["MUSIC"	,	menu_element_type.slider,			"change_volume", 1, [0,1]],
	["BACK"		,	menu_element_type.page_transfer,	menu_page.settings]
);
ds_menu_graphics = create_menu_page(
	["RESOLUTION",	menu_element_type.shift,		"change_resolution", 0, ["960 x 540", "1280 x 720", "1600 x 900", "1920 x 1080"]],
	["WINDOW MODE", menu_element_type.toggle,		"change_window_mode", 1, ["FULLSCREEN", "WINDOWED"]],
	["BACK"		,	menu_element_type.page_transfer,	menu_page.settings]
);
ds_menu_controls = create_menu_page(
	["UP"		,	menu_element_type.input,			"key_up",	vk_up],
	["LEFT"		,	menu_element_type.input,			"key_left",	vk_left],
	["RIGHT"	,	menu_element_type.input,			"key_right",vk_right],
	["DOWN"		,	menu_element_type.input,			"key_down",	vk_down],
	["BACK"		,	menu_element_type.page_transfer,	menu_page.settings]
);

page = 0;
menu_pages = [ds_menu_options, ds_menu_settings, ds_menu_audio, ds_menu_graphics, ds_menu_controls];

var i = 0, array_len = array_length(menu_pages);
repeat(array_len){
	menu_option[i] = 0;
	i++;
}

inputting = false;

//AUDIO
//Criar audio group
//audio_group_load(audio_group_here)