function scr_cutscenes(key){
	scr_debugprint(key)
	
	begin_cutscene();
	
	switch key {
		case "terminal_test":
			c_msg("- You turn on the terminal.");
			c_terminalshow("txt");
		break;
		
		// wAIfu
		case "beginning":
			c_setname("???")
			c_msg("- Halloo!!!!{w20} This is a zipbomb!!! :3{w20}\n- I have activated a nuclear device inside your computer!!!{w20}\n- You have twenty minutes before it blows up! Have fun!!!!")
			c_msg("- oh right!!!{w20} I also leaked all of your personal files to the player!{w20} Mwehehehe")
			c_msg("- Feel free to look through whatever they had on their computers before you BLOW UP!!!!!")
			c_msg("- It's not like you can get all the passwords in time hehehehe");
			c_setname("");
			c_msg("- You have twenty minutes to {cR}DISARM THE BOMB{cD}!")
			c_msg("- Disarm the bomb by getting all the PASSWORDS to your coworkers' {cR}TERMINALS{cD} using the files in the game's download folder!")
			c_msg("- Move with the {cR}ARROW KEYS or WASD{cD}! Interact with {cR}UP or W{cD}!")
			c_msg("- Good luck!")
			c_ic(0, 0, obj_bombtimer)
		break;
		
		
		// TEXTON
		case "texton_hint":
			c_setname("Texton H");
			c_msg("Th'name's Texton.{w20} Texton Hale.")
			c_msg("- Hmmmmmmmmmmmm?{w20} Whuzzat?{w20} M'{cR}password{cD}?");
			c_msg("- Oh,{w15} 'tis simple,{w15} 'twas...{w20} 'twas...");
			c_msg("- ... Oh,{w15} m'afraid I'm getting too {cR}old{cD},{w15} young'n...");
			c_msg("- Oh,{w15} if only I was {cR}young{cD} again...");
		break;
		case "texton_solved":
			randomize();
			var rand = irandom(3)
			c_setname("Texton H");
			if rand == 0 {
				c_msg("- Y'know wh'they say!{w20}\n- If y'wake up in a mount'n...");
				c_msg("- Y'kill ever'one.");
			}
			if rand == 1 {
				c_msg("- When th'timer ranned's out...{w20} y'explode!")
				c_msg("- What?{w20} You knew that?")
			}
			if rand == 2 {
				c_msg("- 1,{w15} 2,{w15} 3,{w15} 4,{w15} 5,{w15} {cY}6{cD},{w15} {cY}7{cD},{w15} 8,{w15} 9,{w15} 10...")
				c_msg("- They's call's me... John Number.{w20} Singular..")
			}
			if rand == 3 {
				c_msg("- Hey,{w15} this whole \"Bomb\",{w15} \"Situation\".")
				c_msg("- Remind's me offa puzzle...")
			}
		break;
		case "texton_terminal":
			c_msg("- You turn on Texton's terminal.");
			c_terminalshow("txt")
		break;
		
		
		// PENNY
		case "png_hint0":
			c_setname("Penny G")
			c_msg("- oh hi im penny!{w20}\n- what,{w15} my {cR}password{cD}?{w20}\n- yeah idk...")
			c_msg("- gotta be somewhere on my pc tho{w20}\n- im too tired to do this sry...")
		break;
		case "png_terminal":
			c_msg("- You turn on Penny's terminal.")
			c_terminalshow("png")
		break;		
		
		// WAVEY
		case "wav_hint0":
			c_setname("Wavey")
			c_msg("- Yo yo YO!{w20} The name's WAVEY!");
			c_msg("- My {cR}password{cD}?{w20} Hidden in the {cR}TUNES{cD}!")
			c_msg("- You gotta catch the {cR}WAVE{cD},{w15} baby!{w20}\n- IF you catch my DRIFT,{w15} that is!")
		break;
		
		
		// JASON
		case "json_hint":
			c_setname("Jason")
			c_msg("- My {cR}password{cD}?{w20}\n- Do I look like I care.{w20} About some \"passwords\".")
			c_msg("- There should be a {cR}reminder{cD}.{w20} {cR}On the wall{cD}.")
			c_msg("- ... Leave.")
		break;
		case "json_solved":
			c_setname("Jason");
			c_msg("You did it?")
			c_msg("... Okay...???")
			c_msg("I already told you.{w20} I don't care.")
			c_msg("...{w20} That's your cue to go.")
		break;
		case "json_terminal":
			if !global.puzzle_solved[0] {
				c_msg("- You turn on Jason's terminal.");
				c_terminalshow("json");
			} else {
				c_msg("- You have already completed Jason's terminal.")
			}
		break;
		
		default:
			c_msg(key)
		break;
	}
}