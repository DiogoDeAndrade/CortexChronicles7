
if !instance_exists(obj_sound_manager)
{
	var _inst = instance_create_layer(0, 0, "Instances", obj_sound_manager);
}

obj_sound_manager.stop_all();
obj_sound_manager.play_title_music();