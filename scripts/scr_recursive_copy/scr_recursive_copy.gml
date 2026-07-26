function scr_recursive_copy(source,destination){
	show_debug_message("copy start");
	directory_create(destination);
	
	process_directory(source,destination);
}
function process_directory(path,copypath){
	var files = file_find_first(path+"/*",fa_none);
	var files_arr = []
	
	while (files != ""){
		array_push(files_arr,files);
		files = file_find_next();
	}
	
	for (var i=0;i<array_length(files_arr);i++) {
		var file = files_arr[i];
		
		if (directory_exists(path+"/"+file)){
			process_directory(path+"/"+file,copypath+"/"+file);
		} else {
			file_copy(path+"/"+file,copypath+"/"+file);
		}
	}
	
}