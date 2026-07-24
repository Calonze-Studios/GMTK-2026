depth = 20

var rails = spr_bg_rails;
var rails_w = sprite_get_width(rails);
var rails_h = sprite_get_height(rails);

for (var i = -1; i <= ceil(room_width/rails_w); i++) {
	draw_sprite(rails, 0, 0 + (rails_w*i), room_height-rails_h)
}