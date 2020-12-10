/// @description Draw Menu

display_set_gui_size(320, 180);

draw_set_halign(fa_center);
draw_set_font(F_Pixelada);


//draw items
for (var i = 0; i < array_length_1d(menu); ++i) {
    draw_set_color(c_white);
	if i == index draw_set_color(c_teal);
	
	draw_text(room_width/2, room_height * .25 + gap * i, menu[i]);
}

