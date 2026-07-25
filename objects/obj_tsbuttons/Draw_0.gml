draw_sprite_ext(spr_nineslice_dialogue_middleorigin,0,x,y,3,2,0,c_white,1)
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_text(x,y,$"{state}")
//reset halign
draw_set_halign(fa_left)