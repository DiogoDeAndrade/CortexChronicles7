/// @description Insert description here
// You can write your code in this editor
speed_x = 0
speed_y = 0
accel = 0.1
inertia = 0.99
max_speed = 2

depth = -50

time_of_last_shot = -1000
time_of_last_pos_change = -1000

offset_x = 30
offset_y = 10

max_health = 20
current_health = max_health
time_of_last_health_change = -1000
explosion_scale = 1
hp_width = 10
hp_height = 1
hp_offset = 10

function deal_damage(_damage)
{
	if (current_health <= 0)
	{
		return;
	}
	current_health -= _damage;
	
	if (current_health <= 0)
	{
		die();
	}
	else
	{
		hit_effect();
	}
	
	time_of_last_health_change = current_time
}

function hit_effect()
{
	if (timeline_running == false)
	{
		timeline_index = tl_flash_black
		timeline_position = 0
		timeline_running = true
	}
}

function die()
{
	sprite_index = spr_explosion;
	image_index = 0;
	image_xscale = explosion_scale;
	image_yscale = explosion_scale;
	
	var _snd = audio_play_sound(snd_drone_explode, 0, false);
	audio_sound_gain(_snd, 0.75, 0);
	audio_sound_pitch(_snd, random_range(0.75, 1.25));
}
