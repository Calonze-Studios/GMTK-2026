spr = spr_jason;
dialogue_key = "json_hint";

anim_style = 1;
anim_speed = 3;

update_dialogue = function() {
	if global.puzzle_solved[0]
		dialogue_key = "json_solved";
	if global.fuckedup > 2
		dialogue_key = "json_broken";
}