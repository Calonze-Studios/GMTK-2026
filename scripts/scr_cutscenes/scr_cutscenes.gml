function scr_cutscenes(key){
	scr_debugprint(key)
	
	begin_cutscene();
	
	switch key {
		case "terminal_test":
			c_msg("- Terminal");
		break;
		
		case "texton_hint":
			c_setname("Texton H")
			c_msg("- Hmmmmmmmmmmmm?{w20} Whuzzat?{w20} M'{cR}password{cD}?");
			c_msg("- Oh,{w15} 'tis simple,{w15} 'twas...{w20} 'twas...");
			c_msg("- ... Oh,{w15} m'afraid I'm getting too {cR}old{cD},{w15} young'n...");
			c_msg("- Oh,{w15} if only I was {cR}young{cD} again...")
		break;
		
		case "png_hint0":
			c_setname("Penny G")
			c_msg("- oh hi{w20}\n- my {cR}password{cD}?{w20}\n- yeah idk...")
			c_msg("- gotta be somewhere on my pc tho{w20}\n- im too tired to do this sry...")
		break;
		
		case "wav_hint0":
			c_setname("Wavey")
			c_msg("- My {cR}password{cD}?{w20} Hidden in the {cR}TUNES{cD}!")
			c_msg("- You gotta catch the {cR}WAVE{cD},{w15} baby!{w20}\n- IF you catch my DRIFT,{w15} that is!")
		break;
		
		case "json_hint":
			c_setname("Jason")
			c_msg("- My {cR}password{cD}?{w20}\n- Do I look like I care.{w20} About some \"passwords\".")
			c_msg("- There should be a {cR}reminder{cD}.{w20} {cR}On the wall{cD}.")
			c_msg("- ... Leave.")
		break;
		
		default:
			c_msg(key)
		break;
	}
}