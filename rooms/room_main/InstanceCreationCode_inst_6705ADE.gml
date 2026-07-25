spr = spr_penny;
dialogue_key = "png_hint0";

update_dialogue = function() {
	if global.puzzle_solved[1]
		dialogue_key = "png_solved";
	if global.fuckedup > 2
		dialogue_key = "png_broken"
}