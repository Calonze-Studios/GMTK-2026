var buttons = ["START", "QUIT"]
var hover = -1;

draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(0, 0, 540, 304, 0);

draw_set_alpha(1)
draw_set_color(c_white);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);

for (var i = 0; i < array_length(buttons); i++) {
	var tempy = 150 + (70 * i);
	var tempx = 270;
	
	var w = 2.5 * sprite_get_width(spr_nineslice_dialogue_middleorigin);
	var h = 1.75 * sprite_get_height(spr_nineslice_dialogue_middleorigin);
	
	if mouse_x >= tempx - w/2 && mouse_x <= tempx + w/2 && mouse_y >= tempy - h/2 && mouse_y <= tempy + h/2
		hover = i;
	
	draw_sprite_ext(spr_nineslice_dialogue_middleorigin, hover == i, tempx, tempy, w/sprite_get_width(spr_nineslice_dialogue_middleorigin), h/sprite_get_height(spr_nineslice_dialogue_middleorigin), 0, c_white, 1);
	
	draw_text(tempx, tempy, buttons[i]);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_sprite(spr_logo_place, 0, 270, 2);


if hover != -1 && mouse_check_button_pressed(mb_left) {
	if hover == 0 {
		scr_room_goto_fade("title to main");
	}
	if hover == 1 {
		scr_room_goto_fade("quit")
	}
}