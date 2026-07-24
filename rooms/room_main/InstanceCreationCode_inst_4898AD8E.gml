spr = spr_texton;
dialogue_key = "texton_hint";

anim_style = 1;

update_dialogue = function() {
	if global.puzzle_solved[3] {
		dialogue_key = "texton_solved"
	}
}