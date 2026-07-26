draw_set_color(c_black);
draw_set_alpha((frame+3)/image_number);
draw_rectangle(global.cam_x - 1, 0, global.cam_x + 541, 304, 0);
draw_set_color(c_white);
draw_set_alpha(1);

draw_sprite(sprite_index, frame, global.cam_x, 0)