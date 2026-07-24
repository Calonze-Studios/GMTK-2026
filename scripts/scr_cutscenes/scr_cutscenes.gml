function scr_cutscenes(key){
	scr_debugprint(key)
	
	begin_cutscene();
	
	switch key {
		case "png_test":
			c_setname("Penny G.")
			c_msg("Hi! I'm Penny! Solve my puzzles!")
		break;
		
		default:
			c_msg(key)
		break;
	}
}