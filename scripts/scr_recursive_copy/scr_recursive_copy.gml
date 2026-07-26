function pathsep(add){
	if (os_type == os_windows){
		return "\\" + add;
	} else {
		return "/" + add;
	}
}

function scr_recursive_copy(source,destination){
	show_debug_message("copy start");
	show_debug_message(source);
	show_debug_message(destination);
	directory_create(destination);
	
	process_directory(source,destination);
}
function process_directory(path,copypath){
	var files = file_find_first(path+pathsep("*"),fa_directory);
	var files_arr = []
	
	//show_debug_message($"processing {path+pathsep("*")}");
	//show_debug_message(files);
	
	while (files != ""){
		array_push(files_arr,files);
		files = file_find_next();
	}
	
	for (var i=0;i<array_length(files_arr);i++) {
		var file = files_arr[i];
		
		if (directory_exists(path+pathsep("")+file)){
			process_directory(path+pathsep("")+file,copypath+pathsep("")+file);
		} else {
			file_copy(path+pathsep("")+file,copypath+pathsep("")+file);
			//show_debug_message($"Copied {path+pathsep("")+file} to {copypath+pathsep("")+file}");
		}
	}
	
}

function scr_recursive_delete(source){
	show_debug_message("delete start");
	show_debug_message(source);
	
	delete_process_directory(source);
}
function delete_process_directory(path){
	var files = file_find_first(path+pathsep("*"),fa_directory);
	var files_arr = []
	
	while (files != ""){
		array_push(files_arr,files);
		files = file_find_next();
	}
	
	for (var i=0;i<array_length(files_arr);i++) {
		var file = files_arr[i];
		
		if (directory_exists(path+pathsep("")+file)){
			delete_process_directory(path+pathsep("")+file);
		} else {
			file_delete(path+pathsep("")+file);
		}
	}
	directory_destroy(path);
	//show_debug_message($"Deleted {path}")
}