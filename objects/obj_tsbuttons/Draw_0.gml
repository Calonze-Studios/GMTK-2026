draw_set_color(c_white)
draw_sprite_ext(spr_nineslice_dialogue_middleorigin, hover, x, y, 3, 2, 0, c_white, 1)

draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(global.textfont)
draw_text(x,y, state)

//reset halign
draw_set_halign(fa_left);
draw_set_valign(fa_top);