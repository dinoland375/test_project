grid_menu_size = 32;

grid_menu_w = room_width div grid_menu_size;
grid_menu_h = room_height div grid_menu_size;

global.grid_menu = mp_grid_create(0, 0, grid_menu_w, grid_menu_h, grid_menu_size, grid_menu_size);
mp_grid_add_instances(global.grid_menu, Obj_wall_menu, 0);

global.play_the_game = false;
global.exit_the_game = false;
instance_create_depth(64, 640, -100, Obj_info);
