// Inherit the parent event
event_inherited();

update_dialogue();

if sprite_exists(spr)
	sprite_index = spr;
	
if anim_style = 0 {
	anim_timer++;
	if anim_timer > (fps/sprite_get_speed(sprite_index))/anim_speed {
		anim_timer = 0;
		image_index++;
		while image_index > image_number
			image_index -= image_number;
	}
}

if anim_style == 1 {
	if image_index != 0
		anim_timer++;
	else
		anim_timer += 0.05
	if anim_timer > (fps/sprite_get_speed(sprite_index))/anim_speed {
		anim_timer = 0;
		image_index++;
		while image_index > image_number
			image_index -= image_number;
	}
}