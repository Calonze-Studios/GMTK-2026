if position_meeting(mouse_x,mouse_y,id)
	hover = 1;
else
	hover = 0;

if mouse_check_button_pressed(mb_left) && hover
{
	switch(state)
	{
		case "Play":
		room_goto(room_main)
		break;
		case "Quit":
		game_end()
		break;
	}
}
x = lerp (x,xstart-200,0.15)