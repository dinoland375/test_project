draw_self();
draw_set_font(F_point);
draw_text(Obj_dog.x-25, Obj_dog.y - 50, "Собака");

if(draw_path_activation = true){
	var draw_steps = steps;
	if (draw_steps > 0)
	{
		var prev_step_x = steps_x[steps_max-draw_steps];
		var prev_step_y = steps_y[steps_max-draw_steps];
		draw_steps -= 1;
		while(draw_steps >= 0)
		{
			var step_x = steps_x[steps_max-draw_steps];
			var step_y = steps_y[steps_max-draw_steps];
			draw_set_colour(c_purple);
			draw_line_width(step_x,step_y,prev_step_x,prev_step_y, 5);
			prev_step_x = step_x;
			prev_step_y = step_y;
			draw_steps -= 1;
		}
	}
	
}

