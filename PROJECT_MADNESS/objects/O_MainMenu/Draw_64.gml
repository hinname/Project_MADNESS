/// @description Draw Main Menu



// Inherit the parent event
event_inherited();

//setando fonte
draw_set_font(F_Pixelada);

if(!global.pause) exit;

var gwidth = global.view_width, gheight = global.view_height;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid); //pega o numero de elementos do grid
var y_buffer = 32, x_buffer = 16 //y_buffer para gap os elementos, x_Buffer para distancia ate Dividing Line
var start_y = (gheight/2) - ((((ds_height-1)/2) * y_buffer)), start_x = gwidth/2;

//Draw Menu "Back"
var c = c_black;
draw_rectangle_color(0,0,gwidth,gheight, c, c, c, c, false);

//Draw Elements on Left Side
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

//left text exposition
var ltx = start_x - x_buffer;
var lty;
var xo; //xoffset

var yy = 0; repeat(ds_height) {
	
	lty = start_y + (yy*y_buffer);
	c = c_white;
	xo = 0;
	
	
	if(yy == menu_option[page]) {
		c = c_teal;
		xo =  -(x_buffer/2);
	}

	
	draw_text_color(ltx+xo, lty, ds_grid[# 0, yy], c, c, c, c, 1);
	
	yy++;
}

// Draw Divinding Line
draw_line(start_x, start_y-y_buffer, start_x, lty+y_buffer);

//Draw Elements on Right Side



