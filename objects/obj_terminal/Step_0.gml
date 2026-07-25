// Inherit the parent event
event_inherited();

if global.puzzle_solved[terminal_id] {
	spr = spr_terminal_solved;
}

if global.fuckedup > 2
	instance_destroy();