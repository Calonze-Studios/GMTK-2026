var _cover_name = game_save_id + "TERMINALS/penny/cloth.png"

var _note1 = game_save_id + "TERMINALS/penny/note1.png"
var _note2 = game_save_id + "TERMINALS/penny/note2.png"
var _note2otherpossibility = game_save_id + "TERMINALS/penny/note1 copy.png"
var _note2onemorepossibility = game_save_id + "TERMINALS/penny/note1 (Copy).png"

//stickynote

if file_exists(_note1)
{
	draw_sprite(spr_stickynote1,0,global.cam_x+130+78,140)
}
if file_exists(_note2) || file_exists(_note2otherpossibility) || file_exists(_note2onemorepossibility)
{
	if global.puzzle_progress[1] == 1 && !notesolved
	{
		global.puzzle_progress[1] = 2
	}
	if global.puzzle_progress[1] == 2 && !notesolved
	{
		global.puzzle_progress[1] = 3
	}
	notesolved = true
	draw_sprite(spr_stickynote2,0,global.cam_x+130+78+5+sprite_get_width(spr_stickynote1),140)
}

// tree

var _mask = game_save_id + "TERMINALS/penny/tree.*"
var _tree_name = filename_name(file_find_first(_mask,fa_none));
var _tree_ext = filename_ext(_tree_name)

if _tree_ext == ".png"
{
	draw_sprite(spr_treepng, 0, global.cam_x+130, 115);
	draw_text(global.cam_x+155,255,"tree.png")
	if global.puzzle_progress[1] == 1 && !treesolved //to avoid sequencebreaks
	{
		global.puzzle_progress[1] = 2
	}
	if global.puzzle_progress[1] == 2 && !treesolved //to avoid sequencebreaks
	{
		global.puzzle_progress[1] = 3
	}
	treesolved = true
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
