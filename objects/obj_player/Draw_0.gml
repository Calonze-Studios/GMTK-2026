var xscale = 1;
var xoffset = 0;

if facing == 0 && flip {
	xscale = -1;
	xoffset = sprite_get_width(spr);
}

draw_sprite_ext(spr, frame, x + xoffset, y, xscale, 1, 0, c_white, 1);