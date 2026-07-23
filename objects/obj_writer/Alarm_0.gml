var text_array = []; // Array that contains every letter in "str"
var base_str = str; // Keeping track of "str" before it gets rewritten
var chars_max = floor(width_max / charxsep); // Maximum amount of characters allowed in each line
var counter = 0; // What letter it's on for the line it's on, basically
var storedspace = 0; // Keeps track of where the last space character was
var storedvowel = 0; // Keeps track of where the last vowel was
var firsttwo = 0; // Whether or not the first two letters of the string are "- " (this is important)
var modifying = 0; // Whether or not it's currently reading a modifier
var plusplus = 1; // The size of the text
var modified_for_how_long = 0;


for (var p = 0; p < string_length(str); p++) {
	if string_copy(str, p, 2) == "- " || string_copy(str, p, 2) == "* " {
		firsttwo = 1;
		break;
	}
}

for (var c = 0; c < string_length(str); c++) 
	text_array[c] = string_char_at(str, c+1) // Copies every character in "str" to the text array

for (var i = 1; i <= string_length(base_str); i++) {
	if !modifying {
		counter += plusplus;
	} else
		modified_for_how_long++;
	
	if string_char_at(str, i) == "{" {
		modifying = 1;
		
		if string_copy(str, i+1, 4) == "size" {
			var distance = 0;
			
			for (var a = 1; a < 10; a += 1) {
				if string_char_at(str, i+5+a) == "}" {
					distance = a
					break;
				}
			}
			plusplus = real(string_copy(str, i+5, distance));
		}
	}
	
	if string_char_at(str, i) == "}" && string_char_at(str, i+1) != "{"
		modifying = 0
	
	if string_char_at(str, i+1) == " " && (i != 2 || firsttwo == 0) && !modifying	{
		storedspace = i; // If the character is a space and i isn't the second character if firsttwo is 1 and the character isn't	
		storedvowel = 0;
	}
	
	if is_vowel(string_char_at(str, i)) && counter+(3*plusplus) <= chars_max && !modifying
		storedvowel = i;
	
	if string_char_at(str, i) == "\n" {
		storedvowel = 0;
		counter = -plusplus;
	}
	
	if counter > chars_max {
		if i-storedspace-modified_for_how_long < 15 && storedspace != 0 {
			text_array[storedspace] = "\n";
			i = storedspace + 1+modified_for_how_long;
			str = "";
			for (var b = 0; b < array_length(text_array); b++) {
				str += text_array[b];
			}
			
		} else {
			if storedvowel != 0 && i-storedvowel-modified_for_how_long < 5 {
				for (var b = array_length(text_array)-1; b > storedvowel; b--) {
					text_array[b+2] = text_array[b];
				}
				
				text_array[storedvowel+1] = "-";
				text_array[storedvowel+2] = "\n";
				
				i = storedvowel+3+modified_for_how_long;
				
				str = "";
				
				for (var c = 0; c < array_length(text_array); c++)
					str += text_array[c];
			} else {
				for (var b = array_length(text_array)-1; b > i - 3; b--) {
					text_array[b+2] = text_array[b];
				}
				
				text_array[i-2] = "-";
				text_array[i-1] = "\n";
				
				str = "";
				
				for (var c = 0; c < array_length(text_array); c++)
					str += text_array[c];
			}
			
		}
		
		
		counter = firsttwo * 3 * plusplus
	}
}