if debug_check_pressed(ord("E")) {
	mult += 0.2
}

if debug_check_pressed(ord("Q")) {
	mult -= 0.2
}

mult = clamp(mult, 0.2, 100)

if room == room_bomb
	visible = 0;
else
	visible = 1;