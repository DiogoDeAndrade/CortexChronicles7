/// @description Insert description here
// You can write your code in this editor
speed_x = 0
speed_y = 0
accel = 0.1
inertia = 0.99
max_speed = 3

depth = -50

time_of_last_shot = -1000

heat = 0
overheat = false
coolSpeed = 1
heatSpeed = 10

max_health = 100
current_health = max_health

explosion_scale = 3

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
		timeline_index = tl_flash_red
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
	
	instance_create_layer(x, y, "Bullets", obj_nuke_blast);
}
