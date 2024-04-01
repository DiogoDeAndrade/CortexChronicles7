/// @description Insert description here
// You can write your code in this editor

joint_id = -1
link1_pos_x = -4
link2_pos_x = 0
explosion_scale = 2
hp_width = 10
hp_height = 1
hp_offset = 10

current_health = max_health
prev_car = noone
time_of_last_health_change = -1000

depth = 90

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
	
	if (self.prev_car != noone)
	{
		self.prev_car.next_car = next_car
		if (next_car != noone)
		{
			next_car.prev_car = self.prev_car
		}
	}
}

function count_cars()
{
	var _car_count = 0
	var _next = other.next_car
	
	while (_next != noone)
	{
		_car_count++;
		_next = _next.next_car
	}	
	
	return _car_count;
}

function get_car(_index)
{
	var _car_count = 1
	var _next = other.next_car
	
	while (_next != noone)
	{
		if (_car_count == _index) 
		{
			return _next
		}
		_car_count++;
		_next = _next.next_car
	}	
	
	return noone;
}

function is_nuke()
{
	return false;
}
