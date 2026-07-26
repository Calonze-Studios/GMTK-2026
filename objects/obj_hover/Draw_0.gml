if !instance_exists(obj_hover)
	exit;

if global.hover_instance != -1 && global.canmove {
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_middle);
	draw_text(global.hover_instance.x + (global.hover_instance.sprite_width/2), global.hover_instance.y - global.hover_instance.sprite_yoffset - 4 - sprite_get_height(spr_arrowu), "PRESS")
	draw_sprite(spr_arrowu, 0, global.hover_instance.x + (global.hover_instance.sprite_width/2) - (sprite_get_width(spr_arrowu)/2), global.hover_instance.y - global.hover_instance.sprite_yoffset - 4 - sprite_get_height(spr_arrowu))
	draw_set_valign(fa_left);
	draw_set_halign(fa_top);
} else {
	instance_destroy();
}