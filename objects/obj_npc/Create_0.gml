// Inherit the parent event
event_inherited();

update_dialogue = function(){
	
}

interact_count = 0;

dialogue_key = "0";
spr = -1;

interact = function() {
	scr_cutscenes(dialogue_key)
	interact_count++;
}