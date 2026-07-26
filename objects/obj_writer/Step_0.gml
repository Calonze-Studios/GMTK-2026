if str == "- It's...{w20} it's EVERYTHING!!!{w20} No, no...{w45}" || str == "- NOOOOO!! STOP!! I DONT WANNA BE DELETED{sp3} NOOOO{sp5}O00{sp9}00000--{w30}" {
	skippable = 0
}

if (up_p() || down_h()) && !done && skippable {
	charon = string_length(str)+1;
}