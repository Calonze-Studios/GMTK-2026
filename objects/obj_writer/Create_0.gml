draw_x = 0; // X where it starts drawing (aligned to top left)
draw_y = 0; // Y where it starts drawing (aligned to top left)

draw_x_offset = 0;
draw_y_offset = 0;

width_max = 240; // Maximum width of line

str = "Aaaaaaaaa"

charon = 0; // The character it's on
soundon = 0; // The sound it's on, so there can be multiple different sounds

shake = 0; // 0 - false, 1 - true
shakeon = 0; // Timer for the shakes 
tilshake = 0; // When it should shake

wait = global.txtspd; // How much it should wait between adding 1 to charon

waiting = 0; // Set to true if there's a pause
done = 0; // Set to true once it's done writing

textcol = c_white; // Text color

charxsep = 8; // X separation between characters
charysep = 18; // Y separation between characters

skippable = 0;

writingdone_pencil_frame = 0;
writingdone_pencil_timer = 0;

writingdone_pencil_alpha = 0;
writingdone_pencil_yoffset = -5;

alarm[0] = 1; // alarm 0 prepares the text to be rendered by alarm 1/draw event by adding line breaks and stuff.

alarm[1] = global.txtspd; // alarm 1 is the one that increments the text