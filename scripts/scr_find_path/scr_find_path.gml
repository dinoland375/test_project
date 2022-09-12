function Scr_find_path(argument0, argument1)
{
	var spiral = instance_create_depth(argument0, argument1, 0, Obj_spiral);
	
	with(spiral)
	{
		Scr_place_spiral(x, y, Obj_walls);
	}
	
	var xx = spiral.x;
	var yy = spiral.y;
	
	if(xx < 0)
	{
		xx = 0;
	}
	else if (xx > room_width -1)
	{
		xx = room_width - 1;
	}
	if(yy < 0)
	{
		yy = 0;
	}
	else if(yy > room_height - 1)
	{
		yy = room_height - 1;
	}
	Scr_path(x, y, xx, yy);
	instance_destroy(spiral);
}