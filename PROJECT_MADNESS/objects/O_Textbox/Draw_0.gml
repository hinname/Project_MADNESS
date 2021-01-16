/// @description Insert description here
// You can write your code in this editor

// Draw Textbox
draw_sprite(S_Textbox, 0, x, y);

// Draw Text
draw_set_font (F_Pixelada);

color = c_white;

draw_text_ext_color(x, y, text, StringWeight, BoxWidth, color, color, color, color, 1);