var _mask = game_save_id + "TERMINALS/penny/tree.*"
var _tree_name = filename_name(file_find_first(_mask,fa_none));
var _tree_ext = filename_ext(_tree_name)
if _tree_ext == ".jpg"
{
	sprite_index = spr_treejpg
}else if _tree_ext == ".png"
{
	sprite_index = spr_treepng
}