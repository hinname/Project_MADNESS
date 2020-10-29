	

if keyboard_check(ord("D")) and not place_meeting (x+4, y, O_Parede)
{
	x += 4;
	image_xscale=1;
	sprite_index = S_Teste_Walk	;
	image_speed = 0.1;
};

if keyboard_check(ord("A")) and not place_meeting (x-4, y, O_Parede)
{
	x -= 4;
	image_xscale =-1;
	sprite_index = S_Teste_Walk;
	image_speed = 0.1;
};

if not keyboard_check(ord("D")) and not keyboard_check(ord("A")) 
{
	sprite_index = S_Teste_Stand;
	image_speed = 0.04;
};

if keyboard_check(ord("D")) and keyboard_check(ord("A"))
{
	sprite_index = S_Teste_Stand;
	image_speed = 0.04;
}



