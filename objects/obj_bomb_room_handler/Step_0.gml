if !check
    exit;

var arr = ["blue.ico",
           "orange.png",
           "audio.wav",
           "list.ini",
           "msvdds0210.gif",
           "site.html",
           "seizure warning.mp4",
           "bear.webp",
           "reference.cloud",
           "data.win"]

var complete = function(){
    with obj_bombtimer
        leave();
    scr_cutscenes("finale");
}

for (var i = array_length(arr)-1; i >= 0; i--) {
    if !file_exists(game_save_id + "TERMINALS/bomb/" + arr[i]) && global.fin_puzzle_progress >= i{
        if global.fin_puzzle_progress == i {
            global.fin_puzzle_progress++;
            
            if i == 9 {
                complete()    
            }
        }
    } else if !file_exists(game_save_id + "TERMINALS/bomb/" + arr[i]) && global.fin_puzzle_progress < i {
        scr_explode("Probably shouldn't have deleted that file...");
        show_debug_message(arr[i])
    }
}

if debug_check_pressed(ord("C"))
    complete();