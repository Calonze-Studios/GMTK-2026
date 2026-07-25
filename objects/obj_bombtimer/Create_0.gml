depth = -10005;

y_offset = -sprite_height - 4;

y_offset_target = 4;

alarm[0] = fps;

leaving = 0;

leave = function() {
	leaving = 1;
	y_offset_target = -sprite_height - 4;
}