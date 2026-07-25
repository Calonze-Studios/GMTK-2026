if special == "final"
	global.fuckedup = 10;

alpha -= 0.08
	
if alpha <= 0 {
	instance_destroy()
	global.canmove = 1;
}