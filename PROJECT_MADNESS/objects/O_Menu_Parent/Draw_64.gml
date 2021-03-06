/// @description Draw Menu

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
draw_line_color(start_x, start_y-y_buffer, start_x, lty+y_buffer, c_white, c_white);

//Draw Elements on Right Side
draw_set_halign(fa_left);

var rtx = start_x + x_buffer; //Right text exposition
var rty;

yy = 0; repeat(ds_height) {
	rty = start_y + (yy*y_buffer); //coisas de design, pode mudar
	
	switch(ds_grid[# 1, yy]) { // O 1 pega o menu_element_type e menu_option[page] para pegar a opção
		
		case menu_element_type.shift:
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var left_shift = "<< ";
			var right_shift = " >>";
			c = c_white;
			
			if(current_val == 0) left_shift=""; //se for o primeiro elemento, não desenha left arrow
			if(current_val == array_length(ds_grid[# 4, yy]) -1) right_shift = ""; //se for o ultimo, não desenha right arrow
			
			if(inputting and yy == menu_option[page]){
				c = c_yellow;
			}
			draw_text_color(rtx, rty, left_shift + current_array[current_val] + right_shift, c, c, c, c, 1);
			
			break;
		
		case menu_element_type.slider:
			var len = 64;
			var current_val = ds_grid[# 3, yy]; 
			var current_array = ds_grid[# 4, yy];
			var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0])); //funciona com outros numeros no array. EX [2,5]

			c = c_white;
			
			draw_line_width(rtx, rty, rtx + len, rty, 2);
			
			if(inputting and yy == menu_option[page]){
				c = c_yellow;
			}
			draw_circle_color(rtx + (circle_pos*len), rty, 4, c, c, false);
			draw_text_color(rtx + (len*1.2), rty, string(floor(circle_pos * 100)) + "%", c,c,c,c, 1);
			
			break;
		
		case menu_element_type.toggle:
			
			var current_val = ds_grid[# 3, yy];
			var c1, c2;
			c = c_white;
			
			if(inputting and yy == menu_option[page]){
				c = c_yellow;
			}
			if(current_val == 0) {
				c1 = c;
				c2 = c_dkgray;
			}
			else {
				c1 = c_dkgray;
				c2 = c;
			}
		
			draw_text_color(rtx, rty, "ON", c1, c1, c1, c1, 1);
			draw_text_color(rtx + 32 ,rty, "OFF", c2, c2, c2, c2, 1);
			
			break;
			
		case menu_element_type.input:
			var current_val = ds_grid[# 3, yy];
			var string_val;
			
			switch(current_val){
				case vk_up: 
					string_val = "UP KEY"; 
					break;
				case vk_left:
					string_val = "LEFT KEY";
					break;
				case vk_right:
					string_val = "RIGHT KEY";
					break;
				case vk_down:
					string_val = "DOWN KEY";
					break;
				default:
					string_val = chr(current_val);
					break;
				}
			
				c = c_white;
				if(inputting and yy == menu_option[page]){
					c = c_yellow;
				}
				draw_text_color(rtx, rty, string_val, c, c, c, c, 1);
				break;
	}
	
	yy++;
}

draw_set_valign(fa_top);

