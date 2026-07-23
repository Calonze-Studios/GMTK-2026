var bxspd = 3;

if global.fuckedup > 2 {
	spr = spr_player_place_better;
	flip = 0;
} else {
	spr = spr_player;
	flip = 1;
}

walking = 0;

if global.canmove {
	if left_h() && !right_h() {
		xspd = lerp(xspd, -bxspd, 0.25);
	
		walking = 1;
	}

	if right_h() {
		xspd = lerp(xspd, bxspd, 0.25);
	
		walking = 1;
	}
}

if xspd < 0
	facing = 0;
if xspd > 0
	facing = 1;

x += xspd;
	
if !walking
	xspd = lerp(xspd, 0, 0.5);

if walking || frame % 2 != 0 {
	walktimer++;
	
	if walktimer >= 10 {
		walktimer = 0;
		frame++;
	}
}

/*
var nearest = instance_nearest(x, y, obj_interactable)

if point_distance(x, y, nearest.x, nearest.y) < 20 {
	
}