function Scr_path()
{
	path = Obj_map.map;
	var path_x = argument0 div Obj_map.grid_size;
	var path_y = argument1 div Obj_map.grid_size;
 
	var end_x = argument2 div Obj_map.grid_size;
	var end_y = argument3 div Obj_map.grid_size;
 
	if (path[end_x, end_y] != -1)
	{
		path[end_x, end_y] = 1;
	}
	else
	{
		return false;
	}
	
	
	var count = 1;
	var loop = true;
	
	while(loop == true)
	{
		loop = false;
		for (var yy = 0; yy < Obj_map.grid_h; yy++)
		{
			for (var xx = 0; xx < Obj_map.grid_w; xx++)
			{
					if (path[xx, yy] == count)
					{
						loop = true;
						if ((xx + 1) < Obj_map.grid_w) //Проверяет правого соседа (Если он равняется 0, то добавляем 1)
						{
							if (path[xx+1, yy] == 0)
							{
								path[xx+1, yy] = count+1;
							}
						}
						if ((xx - 1) >= 0)        //Проверяет левого соседа (Если он равняется 0, то добавляем 1)
						{
							if (path[xx-1, yy] == 0)
							{
								path[xx-1, yy] = count+1;
							}	
						}
						if ((yy + 1) < Obj_map.grid_h) //Проверяет соседа снизу (Если он равняется 0, то добавляем 1)
						{
							if (path[xx, yy+1] == 0)
							{
								path[xx, yy+1] = count+1;
							}
						}
						if ((yy - 1)>= 0)    //Проверяет соседа сверху (Если он равняется 0, то добавляем 1)
						{
							if (path[xx, yy-1] == 0)
							{
								path[xx, yy-1] = count+1;
							}
						}
 
						if (path[path_x, path_y] != 0)
						{
							loop = false;
						}
					}
			}
		}
		count++;
	}
 
	steps = 0;
	steps_x[0] = path_x*Obj_map.grid_size+Obj_map.grid_size/2;
	steps_y[0] = path_y*Obj_map.grid_size+Obj_map.grid_size/2;
 
	var number_result = path[path_x,path_y];
 
	while(number_result > 1)
	{
		var number = number_result;
		var side = -1;
 
		if ((path_x + 1) < Obj_map.grid_w)
		{
			number = path[path_x+1, path_y];
			if ((number > 0) and (number < number_result))
			{
				number_result = number;
				side = 0;
			}
		}
 
		if ((path_x - 1) >= 0)
		{
			number = path[path_x-1, path_y];
			if ((number > 0) and (number < number_result))
			{
				number_result = number;
				side = 2;
			}
		}
 
		if ((path_y + 1) < Obj_map.grid_h)
		{
			number = path[path_x, path_y+1];
			if ((number > 0) and (number < number_result))
			{
				number_result = number;
				side = 1;
			}
		}
 
		if ((path_y - 1) >= 0)
		{
			number = path[path_x, path_y-1];
			if ((number > 0) and (number < number_result))
			{
				number_result = number;
				side = 3;
			}
		}
		
		if (((path_x + 1) < Obj_map.grid_w) and ((path_y - 1) >= 0))
		{
			number = path[path_x+1, path_y-1];
			if ((number > 0) and (number < number_result) and (number_result-number == 1))
			{
				number_result = number;
				side = 4;
			}
		}
 
		if (((path_x + 1) < Obj_map.grid_w) and ((path_y + 1) < Obj_map.grid_h))
		{
			number = path[path_x+1, path_y+1];
			if ((number > 0) and (number < number_result) and (number_result-number == 1))
			{
				number_result = number;
				side = 5;
			}
		}
 
		if (((path_x - 1) >= 0) and ((path_y + 1) < Obj_map.grid_h))
		{
			number = path[path_x-1, path_y+1];
			if ((number > 0) and (number < number_result) and (number_result-number == 1))
			{
				number_result = number;
				side = 6;
			}
		}
 
		if (((path_x - 1) >= 0) and ((path_y - 1) >= 0))
		{
			number = path[path_x-1, path_y-1];
			if ((number > 0) and (number < number_result) and (number_result-number == 1))
			{
				number_result = number;
				side = 7;
			}
		}
		
 
		if (side == 0)
		{
			path_x += 1;
		}
		else if (side == 1)
		{
			path_y += 1;
		}
		else if (side == 2)
		{
			path_x -= 1;
		}
		else if (side == 3)
		{
			path_y -= 1;
		}
		else if (side == 4)
		{
			path_x += 1;
			path_y -= 1;
		}
		else if (side == 5)
		{
			path_x += 1;
			path_y += 1;
		}
		else if (side == 6)
		{
			path_x -= 1;
			path_y += 1;
		}
		else if (side == 7)
		{
			path_x -= 1;
			path_y -= 1;
		}
 
		steps += 1;
		steps_x[steps] = path_x*Obj_map.grid_size+Obj_map.grid_size/2;
		steps_y[steps] = path_y*Obj_map.grid_size+Obj_map.grid_size/2;
}
 
	steps_max = steps;
	return true;
}