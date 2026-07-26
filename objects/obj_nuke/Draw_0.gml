var texture = spr_nuke_texture;
if global.fuckedup > 2
	texture = spr_nuke_texture_place

var textureoverlay = spr_nuke_texture_overlay_place;
var texture_width = sprite_get_width(texture);

var where = global.cam_x + 110;
if room == room_titlescreen
	where = 110;

draw_set_color(c_black);
draw_rectangle(where-2, 0, where + 325, 304, 0);
draw_set_color(c_white);

var camx = global.cam_x;

var loops = 0

while camx < 0 {
	camx += texture_width * mult
	loops++;
}
while camx > texture_width * mult {
	camx -= texture_width * mult;
	loops++;
}

var texture_xoffset = ((texture_width - camx) - texture_width)/mult;

surface_set_target(nukesurf);

draw_clear(c_white);

draw_sprite(texture, 0, texture_xoffset, 0);
draw_sprite_ext(textureoverlay, 0, texture_xoffset, 0, 1, 1, 0, c_white, 0.5)

draw_sprite(texture, 0, texture_xoffset + texture_width, 0);
draw_sprite_ext(textureoverlay, 0, texture_xoffset + texture_width, 0, 1, 1, 0, c_white, 0.5)

surface_reset_target();

depth = 150;


if global.fuckedup <= 2
	shader_set(shd_3dnuke);
	
draw_surface(nukesurf, where, 0);

if global.fuckedup <= 2
	shader_reset();
draw_sprite_ext(spr_nuke_darken, 0, where, 0, 1, 1, 0, c_white, 0.75);