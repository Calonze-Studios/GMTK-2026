if global.debug {
	draw_set_color(c_white);
	
	for (var i = 0; i < array_length(global.debug_message); i++) {
		global.debug_message_timer[i]++;
		if global.debug_message_timer[i] > 100 {
			for (var j = i; j < array_length(global.debug_message)-1; j++) {
				global.debug_message[j] = global.debug_message[j+1];
				global.debug_message_timer[j] = global.debug_message_timer[j+1]
			}
			
			array_delete(global.debug_message, array_length(global.debug_message)-1, 1);
			array_delete(global.debug_message_timer, array_length(global.debug_message)-1, 1);
		}
	}
	
	for (var i = 0; i < array_length(global.debug_message); i++) {
		var tempy = global.cam_y + 4;
		for (var j = 0; j < i; j++) {
			tempy += string_height(global.debug_message[j]) + 2
		}
		
		draw_text(global.cam_x + 4, tempy, global.debug_message[i])
	}
	
}

if global.hover_instance != -1 {
	draw_sprite(spr_arrowu, 0, global.hover_instance.x + (global.hover_instance.sprite_width/2) - (sprite_get_width(spr_arrowu)/2), global.hover_instance.y - global.hover_instance.sprite_yoffset - 4 - sprite_get_height(spr_arrowu))
}


