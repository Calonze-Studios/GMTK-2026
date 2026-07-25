draw_text(4, 4, global.fin_puzzle_progress);

var orange_path = working_directory + "TERMINALS/bomb/orange.png";

var orange_sprite = sprite_add(orange_path,0,false,false,0,0);
var colorchk_surf = surface_create(10,10);

surface_set_target(colorchk_surf);

draw_sprite(orange_sprite,0,0,0);

surface_reset_target();

var total_pixels = 0;
var total_r = 0;
var total_g = 0;
var total_b = 0;

for (var _x=0;_x<10;_x++){
	for (var _y=0;_y<10;_y++){
		var pixel_colour = surface_getpixel(colorchk_surf,_x,_y);
		total_r += colour_get_red(pixel_colour);
		total_g += colour_get_green(pixel_colour);
		total_b += colour_get_blue(pixel_colour);
		total_pixels++;
	}
}

var average_r = total_r/total_pixels;
var average_g = total_g/total_pixels;
var average_b = total_b/total_pixels;

show_debug_message($"Average colour in orange.png {average_r},{average_g},{average_b}")

is_blue = average_b > average_r && average_b > average_g;

surface_free(colorchk_surf);

sprite_delete(orange_sprite);