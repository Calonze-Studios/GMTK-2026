if cloth || !treesolved {
	global.password_can_enter = 0;
} else {
	global.password_can_enter = 1;
}

if notesolved
	global.password = "FOREFORE"

if cloth {
	if (global.png_dial < 1) global.png_dial = 1;
} else if !treesolved {
	if (global.png_dial < 2) global.png_dial = 2;	
} else if !notesolved {
	if (global.png_dial < 3) global.png_dial = 3;
}