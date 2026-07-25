if !instance_exists(obj_hover)
	exit;

if global.hover_instance != -1 && global.canmove {
	draw_sprite(spr_arrowu, 0, global.hover_instance.x + (global.hover_instance.sprite_width/2) - (sprite_get_width(spr_arrowu)/2), global.hover_instance.y - global.hover_instance.sprite_yoffset - 4 - sprite_get_height(spr_arrowu))
} else {
	instance_destroy();
}