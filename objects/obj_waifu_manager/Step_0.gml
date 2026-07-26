if prev_expression != global.waifu_expression {
	expression = "static";
	frame = 0;
	frame_timer = 0;
	alarm[0] = 30;
}

frame_timer++;

if expression == "static" {
	spr = spr_m_waifu_place_noise;
}

if expression == "idle" {
	spr = spr_m_waifu_place_idle;
}
	
if expression == "talk" {
	spr = spr_m_waifu_place_talk;
}
if expression == "glitch" {
	spr = spr_m_waifu_place_glitch;
}

if frame_timer >= frame_timer_needed {
	frame++;
	frame_timer = 0;
}

prev_expression = global.waifu_expression;