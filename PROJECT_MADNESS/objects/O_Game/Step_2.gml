/// @description Pause the game
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
		
		room_previous(room);
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
		room_goto_previous();
		instance_deactivate_all(true);
	}
	
}