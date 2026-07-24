alarm[0] = 30
var _mask = working_directory + "LEVEL_DATA/LEVEL1/cloth.png"
var _filename = filename_name(file_find_first(_mask,fa_none))
if !file_exists(_mask)
{
	instance_destroy()
}