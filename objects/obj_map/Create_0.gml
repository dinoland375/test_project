global.pause_found_path = false;
instance_destroy(Obj_sound);
grid_size = 32;
grid_w = room_width div grid_size;
grid_h = room_height div grid_size;
map = ds_grid_create(grid_w, grid_h); //Для алгоритма Дэйкстры

maps = mp_grid_create(grid_w, grid_h, room_width, room_height, grid_size,grid_size); // Для кота
mp_grid_add_instances(maps, Obj_walls, 1);