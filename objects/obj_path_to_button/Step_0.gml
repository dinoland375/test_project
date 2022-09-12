if(global.play_the_game = true)
{
	if(global.exit_the_game = true)
	{
		global.play_the_game = false;
		xE = Obj_text_exit.x;
		yE = Obj_text_exit.y;
		path_to_exit = path_add();
		mp_grid_path(global.grid_menu, path_to_exit, x, y, xE+ 50, yE, 0);
		path_start(path_to_exit, 5, path_action_stop, 0);
	}
		xS = Obj_text_start.x;
		yS = Obj_text_start.y;
		path_to_start = path_add();
		mp_grid_path(global.grid_menu, path_to_start, x, y, xS + 50, yS , 0);
		path_start(path_to_start, 5, path_action_stop, 0);
}
	
if(global.exit_the_game = true)
{
	if(global.play_the_game = true)
	{
		global.exit_the_game = false;
		xS = Obj_text_start.x;
		yS = Obj_text_start.y;
		path_to_start = path_add();
		mp_grid_path(global.grid_menu, path_to_start, x, y, xS + 50, yS , 0);
		path_start(path_to_start, 5, path_action_stop, 0);
	}
	xE = Obj_text_exit.x;
	yE = Obj_text_exit.y;
	path_to_exit = path_add();
	mp_grid_path(global.grid_menu, path_to_exit, x, y, xE+ 50, yE, 0);
	path_start(path_to_exit, 5, path_action_stop, 0);
}