var _cover_name = working_directory + "TERMINALS/penny/cloth.png"

var _note1 = working_directory + "TERMINALS/penny/note1.png"
var _note2 = working_directory + "TERMINALS/penny/note2.png"
var _note2otherpossibility = working_directory + "TERMINALS/penny/note1 copy.png"
var _note2onemorepossibility = working_directory + "TERMINALS/penny/note1 (Copy).png"

//stickynote

if file_exists(_note1)
{
	draw_sprite(spr_stickynote1,0,global.cam_x+130+78,140)
}
if file_exists(_note2) || file_exists(_note2otherpossibility) || file_exists(_note2onemorepossibility)
{
	if global.puzzle_progress[1] == 1 && !notesolved
	{
		notesolved = true
		global.puzzle_progress[1] = 2
	}
	if global.puzzle_progress[1] == 2 && !notesolved
	{
		notesolved = true	
		global.puzzle_progress[1] = 3
	}	
	draw_sprite(spr_stickynote2,0,global.cam_x+130+78+5+sprite_get_width(spr_stickynote1),140)
}

// tree

var _mask = working_directory + "TERMINALS/penny/tree.*"
var _tree_name = filename_name(file_find_first(_mask,fa_none));
var _tree_ext = filename_ext(_tree_name)

if _tree_ext == ".png"
{
	draw_sprite(spr_treepng, 0, global.cam_x+130, 115);
	draw_text(global.cam_x+155,255,"tree.png")
	if global.puzzle_progress[1] == 1 && !treesolved //to avoid sequencebreaks
	{
		treesolved = true
		global.puzzle_progress[1] = 2
	}
	if global.puzzle_progress[1] == 2 && !treesolved //to avoid sequencebreaks
	{
		treesolved = true
		global.puzzle_progress[1] = 3
	}
}else
{
	draw_sprite(spr_treejpg, 0, global.cam_x+130, 115);
	draw_text(global.cam_x+155,255,"tree"+$"{_tree_ext}")
} 



//boolean var that makes it check for the file's existence once
if file_exists(_cover_name) && !cloth{
	cloth = true
	scr_debugprint("exists")
}
if !file_exists(_cover_name) && cloth{
	cloth = false
	scr_debugprint("killed.")
	global.puzzle_progress[1] = 1
}
if cloth
{
	draw_sprite(spr_terminal_cover, 0, global.cam_x, 0);
}
