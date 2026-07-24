var centx = obj_player.x - 152;
var centy = 0;

view_camera[0] = camera_create_view(centx, centy, 540, 304);
view_visible[0] = 1;
view_surface_id[0] = application_surface;

view_camera[1] = camera_create_view(centx, centy, 540, 304);
view_visible[1] = 1;
end_camera_surf = surface_create(270,304);
view_surface_id[1] = end_camera_surf;

view_camera[2] = camera_create_view(centx, centy, 540, 304);
view_visible[2] = 1;
beginning_camera_surf = surface_create(1,304);
view_surface_id[2] = beginning_camera_surf;

view_enabled = 1;
