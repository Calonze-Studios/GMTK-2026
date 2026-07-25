if prev_expression != global.waifu_expression {
	expression = "static";
	frame = 0;
	frame_timer = 0;
	alarm[0] = 30;
}

frame_timer++;

if expression == "static" {
	spr = spr_m_waifu_place_noise;
	frame_timer_needed = 5;
}
if expression == "idle" {
	spr = spr_m_waifu_place_idle;
	frame_timer_needed = 30;
}
	
if expression == "talk" {
	spr = spr_m_waifu_place_talk;
	frame_timer_needed = 30;
}

if expression == "angry" {
	spr = spr_m_waifu_place_angry;
	frame_timer_needed = 20;
}

if expression == "shock" {
	spr = spr_m_waifu_place_shock;
	frame_timer_needed = 20;
}
if expression == "glitch" {
	spr = spr_m_waifu_place_glitch;
	frame_timer_needed = 20;
}

if frame_timer >= frame_timer_needed {
	frame++;
	frame_timer = 0;
}

prev_expression = global.waifu_expression;