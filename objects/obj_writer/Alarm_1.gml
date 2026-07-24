charon++;
wait = global.txtspd;
waiting = 0;

if charon <= string_length(str) {
	
	var check = function() {
		if string_char_at(str, charon+1) == "w" {
			var distance = 0;
			
			for (var a = charon+2; a < charon+12; a++) {
				if string_char_at(str, a) != "}"
					distance++
				else
					break;
			}
			
			wait = real(string_copy(str, charon+2, distance));
			waiting = 1;
			
		}
		
		if string_copy(str, charon+1, 2) == "sp" {
			var distance = 0;
			
			for (var a = charon+3; a < charon+13; a++) {
				if string_char_at(str, a) != "}"
					distance++
				else 
					break;
				
			}
			global.txtspd = real(string_copy(str, charon+3, distance))
		}
		
		if string_char_at(str, charon+1) == "f" {
			var distance = 0;
			
			for (var a = charon+2; a < charon+12; a++) {
				if string_char_at(str, a) != "}"
					distance++
				else 
					break;
				
			}
			
			global.portrait = real(string_copy(str, charon+2, distance))
		}
	}
	
	if string_char_at(str, charon) == "{" {
		
		while string_char_at(str, charon-1) != "}" || string_char_at(str, charon) == "{" {
		
			if string_char_at(str, charon) == "{"
				check();
			
			charon++;
			
		}
		
	}
	if play_snd {
		if audio_is_playing(global.txtsnd[soundon]) {
			audio_stop_sound(global.txtsnd[soundon])
		}
	
		snd_play(global.txtsnd[soundon])
		soundon++;
	
		if soundon == array_length(global.txtsnd) {
			soundon = 0;
		}
	}
	
	alarm[1] = wait;
} else {
	
	done = 1;
	
}