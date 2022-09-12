if(step_finish_object = true and x > 10)
{
	
	xM = mouse_x div 32 * 32 + 16;
	yM = mouse_y div 32 * 32 + 16;
	path_to_mouse = path_add();
	mp_grid_path(Obj_map.maps, path_to_mouse, x, y, xM, yM, 0);
	path_start(path_to_mouse, 12, path_action_stop, 0);
}
else
{
	audio_stop_sound(Snd_angry_cat);
	

}

if(speed = 0)
	image_speed = 0;
else
	image_speed = 0.3;