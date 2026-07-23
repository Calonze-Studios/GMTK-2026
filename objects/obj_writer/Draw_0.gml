draw_x_offset = 0;
draw_y_offset = 0;

draw_set_color(textcol);
draw_set_font(global.textfont);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);

var _draw_x = draw_x;
var _draw_y = draw_y;

var shake_x_offset = 0;
var shake_y_offset = 0;

var txt_xscale = 1;
var txt_yscale = 1;

var _charxsep = charxsep;
var _charysep = charysep;

var nextsize = 1;
var lineon = 0;
var linebreakon = 0;
var sizedonceperline = 0;

var modifying = 0;

var other_value_i_choose = 40;

var col = textcol;
var subcol = textcol;

shake = 0;

for (var i = 1; i < charon; i++) {
	
	if shake != 0
		shakeon++;
	if shakeon >= tilshake && shake != 0 {
		shakeon = 0;
		
		randomize();
		tilshake = (100 / (shake * other_value_i_choose)) + (irandom_range(-2, 2) < 0 ? -1 : 1);
		
		
		var value_i_choose = 1;
		
		randomize();
		shake_x_offset = irandom_range(-value_i_choose, value_i_choose)
		shake_y_offset = irandom_range(-value_i_choose, value_i_choose)
	} else {
		shake_x_offset = 0;
		shake_y_offset = 0;
	}
	
	if sizedonceperline == 0 {
		sizedonceperline = 1;
		var maxsize = [txt_yscale]
		for (var a = linebreakon+1; a < string_length(str); a++) {
			if string_copy(str, a, 5) == "{size" {
				var distance = 0;
		
				for (var b = a+5; b < a+15; b++) {
					if string_char_at(str, b) != "}"
						distance++
					else
						break;
				}
				
				array_push(maxsize, real(string_copy(str, a+5, distance)))
				
			} else if string_char_at(str, a) == "\n" && a != linebreakon {
				break;
			}
		}
		
		nextsize = script_execute_ext(max, maxsize);
		draw_y_offset += (nextsize-txt_xscale) * (charysep + 1);
		
	}
	
	if string_char_at(str, i) == "{" {
		modifying = 1;
		
		if string_copy(str, i+1, 2) == "sh" {
			
			var distance = 0;
		
			for (var a = i+3; a < i+13; a++) {
				if string_char_at(str, a) != "}"
					distance++
				else
					break;
			}
			
			shake = real(string_copy(str, i+3, distance));
			randomize();
			if shake != 0
				tilshake = (100 / (shake * other_value_i_choose)) + irandom_range(-2, 2);
			else
				tilshake = 0;
			
		}
		
		if string_char_at(str, i+1) == "c" {
			
			if string_char_at(str, i+2) == "R" { // Red
				
				col = c_red;
				subcol = c_red;
				
			}
			else if string_char_at(str, i+2) == "G" { // Green
				
				col = c_lime;
				subcol = c_lime;
				
			}
			else if string_char_at(str, i+2) == "B" { // Blue
				
				col = c_blue;
				subcol = c_blue;
				
			}
			else if string_char_at(str, i+2) == "Y" {
			
				col = c_yellow;
				subcol = c_yellow;
			
			}
			else if string_char_at(str, i+2) == "D" { // Default
				
				draw_set_color(c_white);
				
				col = c_white;
				subcol = c_white;
				
			}
		}
		
		if string_copy(str, i+1, 4) == "size" {
			
			var distance = 0;
			
			for (var a = i+5; a < i+15; a++) {
				if string_char_at(str, a) != "}"
					distance++
				else
					break;
			}
			txt_xscale = real(string_copy(str, i+5, distance));
			txt_yscale = real(string_copy(str, i+5, distance));
			//nextsize = txt_xscale;
			
			_charxsep = real(string_copy(str, i+5, distance)) * charxsep;
			_charysep = real(string_copy(str, i+5, distance)) * charysep;
		
		}
	}
	
	if string_char_at(str, i-1) == "}" && string_char_at(str, i) != "{"
		modifying = 0;
	
	if modifying == 1 {
		
	}	
	else if (string_char_at(str, i) == "-" || string_char_at(str, i) == "*") && draw_x_offset == 0 {
		draw_text_transformed_color(draw_x + (shake_x_offset),_draw_y + (shake_y_offset) + draw_y_offset - (_charysep - (_charysep / txt_yscale)) - (nextsize != 1 && txt_yscale == 1), string_char_at(str, i), txt_xscale, txt_yscale, 0, col, col, subcol, subcol, 1);
		_draw_x = draw_x + _charxsep
	}
	else if string_char_at(str, i) == " " && draw_x_offset == 0 {
		//if string_char_at(str, i-1) != "*"
			_draw_x += _charxsep
	}
	else if string_char_at(str, i) == "\n" {
		sizedonceperline = 0;
		linebreakon = i;
		lineon++
		draw_y_offset += _charysep;
		draw_x_offset = 0;
	}
	else {
		draw_text_transformed_color(_draw_x + draw_x_offset + (shake_x_offset), _draw_y + (shake_y_offset) + draw_y_offset - (_charysep - (_charysep / txt_yscale)), string_char_at(str, i), txt_xscale, txt_yscale, 0, col, col, subcol, subcol, 1);
		draw_x_offset += _charxsep;
	}
	
}