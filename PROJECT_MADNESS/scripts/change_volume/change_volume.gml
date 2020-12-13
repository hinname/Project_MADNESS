// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_volume(volume_level){
	var type = menu_option[page];
	
	switch(type){
		case 0: 
			audio_master_gain(volume_level);
			break;
		case 1:
			//audio_group_set_gain(audiogroup_soundeffects, volume_level, 500);
			break;
		case 2:
			//audio_group_set_gain(audiogroup_music, volume_level, 500);
			break;
	}
}