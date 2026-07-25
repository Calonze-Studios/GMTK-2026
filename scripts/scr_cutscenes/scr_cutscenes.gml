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
			c_msg("- Halloo!!!!{w20} This is a zipbomb!!! :3{w20}\n- I have activated a nuclear device inside your computer!!!{w20}\n- You have twenty minutes before it blows up! Have fun!!!!", snd_m_nyan)
			c_msg("- oh right!!!{w20} I also leaked all of your personal files to the player!{w20} Mwehehehe", snd_m_ohya)
			c_msg("- Feel free to look through whatever they had on their computers before you BLOW UP!!!!!", snd_m_nyan)
			c_msg("- It's not like you can get all the passwords in time hehehehe", snd_m_nyan);
			c_setname("");
			c_msg("- You have twenty minutes to {cR}DISARM THE BOMB{cD}!")
			c_msg("- Disarm the bomb by getting all the PASSWORDS to your coworkers' {cR}TERMINALS{cD} using the files in the game's download folder!")
			c_msg("- Move with the {cR}ARROW KEYS or WASD{cD}! Interact with {cR}UP or W{cD}!")
			c_msg("- Good luck!")
			c_ic(0, 0, obj_bombtimer)
		break;
		
		case "final_puzzle":
			global.timer = 15 * 60 + 5
			
			c_setname("wAIfu");
			c_change_global_var("waifu_expression", "talk")
			c_msg("- Oh! You got here...{w20}\n- Well, I suppose I'll explode now!", snd_m_explode);
			c_msg("- ...", snd_m_silent);
			
			c_change_global_var("waifu_expression", "angry")
			c_msg("- Why doesn't it work?!{w20}\n- Oh...{w20} The timer's off...{w20}\n- Whatever, I can just {cR}reboot it{cD}!", snd_m_reboot);
			
			c_ic(0, 0, obj_bombtimer);
			
			c_change_global_var("waifu_expression", "talk")
			c_msg("- {cR}15 minutes{cD} until detonation!{w20}\n- And I'll {cR}EXPLODE{cD} if you {cR}delete the wrong file{cD}! mwehehehe", snd_m_15);
			
			c_change_global_var("waifu_expression", "idle")
			c_setname("Wavey");
			c_msg("- You have to like {cR}DESTROY the files{cD} man!")
			
			c_setname("wAIfu")
			c_change_global_var("waifu_expression", "angry")
			c_msg("- DON'T TELL 'EM THAT!!!{w20}\nWhatever!{w20} The order is {cR}hidden{cD}!{w20} And if you mess up it's GAME OVER!!!", snd_m_gameover)
			
			c_change_global_var("waifu_expression", "idle")
			c_setname("Penny G")
			c_msg("- so like{w20}\n- yea{w20}\n- you gotta be careful and like sure u r deleting them in the {cR}right order{cD} n stuff")
			c_msg("- theres like some {cR}clues{cD} in our folders...{w20} u should {cR}look around{cD}")
			
			c_setname("wAIfu")
			c_change_global_var("waifu_expression", "talk")
			c_msg("- ORRRRRRRR,{w15} you could just start deleting random files for funnies!", snd_m_funnies)
			
			c_change_global_var("waifu_expression", "idle")
			c_setname("Jason")
			c_msg("- I left you a {cR}list{cD}.{w20} In {cR}wAIfu's folder{cD}.{w20}\n- Feel free to use it.{w20} To write down the {cR}ORDER{cD}.")
			c_msg("- Not like I care if the bomb explodes or not.")
			
			c_setname("wAIfu")
			c_change_global_var("waifu_expression", "shock")
			c_msg("- You WHAT?!{w20}\n- ... WHATEVER!{w20} It's not like you can {cR}FIND{cD} the {cR}ORDER{cD}.{w20} It's IMPOSSIBLE to enter!", snd_m_order);
			c_change_global_var("waifu_expression", "idle")
		break;
		
		case "finale":
			c_setname("wAIfu")
			c_change_global_var("waifu_expression", "glitch")
			c_msg_skip("- NO DONT DELETE ME{sp3} NOOOO{sp5}O00{sp9}00000--")
			c_se_ext(scr_room_goto_fade, ["final to main"])
		break;
		
		case "all_puzzles":
			with obj_bombtimer
				leave();
			c_msg("- You have completed every TERMINAL.")
			c_msg("- A flying platform has appeared near {cR}Penny{cD}.")
			c_msg("- It's time to finish this.")
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
			if global.puzzle_solved[3] == 0 {
				c_msg("- You turn on Texton's terminal.")
				c_terminalshow("txt");
			} else {
				c_msg("- You have already completed Texton's terminal.")
			}
		break;
		case "texton_broken":
			if global.flag[0] == 0 {
				c_setname("Texton H")
				c_msg("- Everything has been destroyed.")
				c_msg("- If you wish to restore it, please restart the     ")
				c_msg("- You have completed the\n                       game,")
				c_snd_play(snd_cheer_crash);
				c_se_ext(show_error, ["GAME DONE", 1])
				c_setflag(0, 1)
			} else {
				c_msg(" ")
			}
		break;
		
		
		// PENNY
		case "png_hint0":
			c_setname("Penny G")
			if global.puzzle_progress[0] == 0 {
				c_msg("- oh hi im penny!{w20}\n- what,{w15} my {cR}password{cD}?{w20}\n- yeah idk...")
				c_msg("- gotta be somewhere on my pc tho{w20}\n- im too tired to do this sry...")
			}
			if global.puzzle_progress[0] == 1 {
				c_msg("- oh that blanket?")
				c_msg("- yea idk why thats there...")
				c_msg("")
			}
			if global.puzzle_progress[0] == 2 {
				
			}
			if global.puzzle_progress == 3 {
				
			}
			
		break;
		case "png_solved":
			c_setname("Penny G");
			c_msg("- thx dearie")
			c_msg("- did you know im only 23 years old?")
			c_msg("- thats what being a photographer does to u")
		break;
		case "png_terminal":
			if global.puzzle_solved[1] == 0 {
				c_msg("- You turn on Penny's terminal.")
				c_terminalshow("png");
			} else {
				c_msg("- You have already completed Penny's terminal.")
			}
		break;
		case "png_broken":
			c_setname("			.png")
			c_msg("Dialogue not found for obj_png_npc");
			c_msg("- gotta be somewhere on my pc tho{w20}\n- im too tired to do this sry...")
		break;
		
		// WAVEY
		case "wav_hint0":
			c_setname("Wavey")
			c_msg("- Yo yo YO!{w20} The name's WAVEY!");
			c_msg("- My {cR}password{cD}?{w20} Hidden in the {cR}TUNES{cD}!")
			c_msg("- You gotta catch the {cR}WAVE{cD},{w15} baby!{w20}\n- IF you catch my DRIFT,{w15} that is!")
		break;
		case "wav_terminal":
			if global.puzzle_solved[2] == 0 {
				c_msg("- You turn on Wavey's terminal.")
				c_terminalshow("wav");
			} else {
				c_msg("- You have already completed Wavey's terminal.")
			}
		break;
		case "wav_broken":
			c_setname("c_setname(wav)")
			c_msg("c_msg(Hello world!)")
			c_msg("c_msg(c_msg(c_msg(c_msg")
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
		case "json_broken":
			c_setname("\"json_npc\"")
			c_msg("Hello! This is debug text! If you encounter this, please\n    the developers!")
			c_msg("Hello! This is debug text! If you encounter this, please\n    the developers!")
		break;
		
		
		default:
			c_msg(key)
		break;
	}
}