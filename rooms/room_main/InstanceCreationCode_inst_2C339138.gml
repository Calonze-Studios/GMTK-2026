spr = spr_wavey;

anim_style = 1;
anim_speed = 2;

dialogue_key = "wav_hint0"

update_dialogue = function() {
	if global.puzzle_solved[2]  {
		
	}
	if global.fuckedup > 2
		dialogue_key = "wav_broken";
}