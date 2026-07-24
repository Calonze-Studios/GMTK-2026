var _mask = working_directory + "LEVEL_DATA/LEVEL1"
var _tree_name = filename_name(file_find_first("LEVEL_DATA/LEVEL1",0))
var _tree_ext = filename_ext(_tree_name)
if _tree_ext == ".jpg"
{
	sprite_index = spr_treejpg
}else if _tree_ext == ".png"
{
	sprite_index = spr_treepng
}