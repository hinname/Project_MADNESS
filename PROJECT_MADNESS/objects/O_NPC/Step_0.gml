/// @description Insert description here
// You can write your code in this editor

image_speed = 0.04;
text = "fala meu bom!";

if (place_meeting(x, y, O_Player))
	//Se ainda não criou o texto
	{
		if (mytextbox == noone)
		{
		mytextbox = instance_create_layer(x, y, "Text", O_Textbox);
		mytextbox.text = text;
		}
	}
	//Se já criou
	else
	{
		if (mytextbox != noone)
		{
		instance_destroy(mytextbox);
		mytextbox = noone;
		}
		
	}
	