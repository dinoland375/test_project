global.pause_found_path = !global.pause_found_path;

if(global.pause_found_path = true){
	instance_create_depth(64, 640, 0, Obj_info);
	instance_create_depth(928, 32, 0, Obj_settings);
	audio_stop_sound(Snd_growl_dog);

}
else{
	instance_destroy(Obj_settings);
	instance_destroy(Obj_info);
}