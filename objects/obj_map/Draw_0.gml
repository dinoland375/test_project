draw_self();
if(global.pause_found_path = true)
{
	draw_set_font(F_game);
	draw_text(390, 90, "ПАУЗА");
}

for(var yy = 0; yy < grid_h; yy++)
{
	for(var xx = 0; xx < grid_w; xx++)
	{
		map[xx, yy] = -place_meeting(xx * grid_size, yy * grid_size, Obj_walls);
	}
}
