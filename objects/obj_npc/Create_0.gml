// Inherit the parent event
event_inherited();

update_dialogue = function(){
	
}

interact_count = 0;

dialogue_key = "0";
spr = -1;

anim_style = 0;
anim_timer = 0;

anim_speed = 1;

image_speed = 0;

interact = function() {
	scr_cutscenes(dialogue_key)
	interact_count++;
}