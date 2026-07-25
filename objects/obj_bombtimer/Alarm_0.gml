global.timer--;

if global.timer <= 0 {
	scr_explode("You ran out of time.");
	exit;
}

alarm[0] = fps