if(step_first_object = true)
{
	
	if(step_first_object = true and x > 10)
	{
		xM = mouse_x div 32 * 32 + 16;
		yM = mouse_y div 32 * 32 + 16;
		path_to_mouse = path_add();
		mp_grid_path(Obj_map.maps, path_to_mouse, x, y, xM, yM, 0);
		path_start(path_to_mouse, 12, path_action_stop, 0);
	}
	if (place_meeting(x, y, Obj_walls))
			x = mouse_x;
		
	if (place_meeting(x, y, Obj_walls))
			y = mouse_y;
}
else
	{
		audio_stop_sound(Snd_bark_dog);
		
		x = x;
		y = y;
	}
xF = Obj_cat.x
yF = Obj_cat.y;

if(speed = 0)
	image_speed = 0;
	
if(global.pause_found_path)
{
	speed = 0;
	exit;
}
	
if (steps >= 0)
{
	
	image_speed = 0.3;
	var step_x = steps_x[steps_max-steps];
	var step_y = steps_y[steps_max-steps];
	var step_speed = point_distance(x, y, step_x, step_y);
	if (step_speed > step_speed_max)
	{
		step_speed = step_speed_max;
	}
	else if(step_speed < step_speed_max)
	{
		var step_speed_under = step_speed_max - step_speed;
	}
	move_towards_point(step_x, step_y, step_speed);
	
	if (x == step_x) and (y == step_y)
	{
		if (new_steps)
		{
			Scr_find_path(xF, yF);
			new_steps = false;
		}
		else
		{
			steps -= 1;
			if (steps >= 0)
			{
				step_x = steps_x[steps_max-steps];
				step_y = steps_y[steps_max-steps];
				move_towards_point(step_x, step_y, step_speed_under);
			}
		}
	}
}
else
{
	if (new_steps)
	{
		Scr_find_path(xF, yF);
		new_steps = false;
	}
	else
	{
		speed = 0;
		audio_stop_sound(Snd_growl_dog);
	}
}