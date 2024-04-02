/// @description Insert description here
// You can write your code in this editor
var _elapsed = current_time - time_of_last_shot;
if (_elapsed > 100) && (!overheat)
{
	var _wp = localToWorld(x, y, -image_angle, 7, 0)
	var _rotation = image_angle

	var _inst = instance_create_layer(_wp[0], _wp[1], "Bullets", obj_bullet);
	with (_inst)
	{
		faction = 1
		image_angle = _rotation;
		image_blend = c_black
		hspeed = lengthdir_x(4, image_angle)
		vspeed = lengthdir_y(4, image_angle)
	}
		
	time_of_last_shot = current_time
	
	var _prev = heat
	heat = heat + heatSpeed
	
	if (_prev < 80) && (heat > 80)
	{
		var _snd = audio_play_sound(snd_alarm, 0, false);
		audio_sound_gain(_snd, 0.6, 0);
	}

	if (heat > 100)
	{
		overheat = true
		
		var _snd = audio_play_sound(snd_overheat, 0, false);
		audio_sound_gain(_snd, 0.8, 0);
	}
	
	var _snd = audio_play_sound(snd_machine_gun, 0, false);
	audio_sound_gain(_snd, 0.05, 0);
	audio_sound_pitch(_snd, random_range(0.75, 1.25));
}
