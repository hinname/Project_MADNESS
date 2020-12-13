// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_window_mode(screen_mode){
	switch(screen_mode){
		case 0: 
			window_set_fullscreen(true);
			break;
		case 1:
			window_set_fullscreen(false);
			break;
		
	}
}