/// @description Insert description here
// You can write your code in this editor
global.roomFrom = 0;

if(keyboard_check_pressed(global.key_menu))
{
	global.pause = !global.pause;
	
	if(global.pause)
	{
		/*todos os objetos ficaram sem animação
		with(all)
		{
			pauseImageSpeed = image_speed;
			image_speed = 0;
		}*/
		if(instance_exists(O_Player))
		{
			
			O_Player.persistent = false;
			instance_activate_all();
			
		}
		
		global.roomFrom = room;
		room_persistent = true;
		room_goto(R_MenuOption);
	}
	else 
	{
		/*tirar o pause para voltar as animações
		with(all)
		{
			image_speed = pauseImageSpeed;
		}
		*/
		
		instance_deactivate_all(true);
	}
	
}

if(!global.pause){
	room_persistent = false;
}