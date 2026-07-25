depth = 20

var rails = spr_bg_rails;
var rails_w = sprite_get_width(rails);
var rails_h = sprite_get_height(rails);

for (var i = -2; i <= ceil(room_width/rails_w); i++) {
	if room != room_titlescreen
		draw_sprite(rails, 0, 0 + (rails_w*i), room_height-rails_h)
	else
		draw_sprite(rails, 0, global.cam_x + (rails_w*i), room_height-rails_h)
}