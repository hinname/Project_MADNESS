/// @description Draw Fade
draw_set_color(c_black);
draw_set_alpha(fadeLevel);
draw_rectangle(0,0, room_width, room_height, false);
draw_set_alpha(1);