/// @description Insert description here
// You can write your code in this editor

joint_id = -1
link1_pos_x = -4
link2_pos_x = 0
explosion_scale = 2

current_health = max_health
prev_car = noone

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
	phy_active = false;
	
	if (self.prev_car != noone)
	{
		self.prev_car.next_car = next_car
		if (next_car != noone)
		{
			next_car.prev_car = self.prev_car
		}
	}
	
	var _next_car = self.next_car
	var _t = 15
	while (_next_car != noone)
	{
		var _tmp = _next_car.next_car
		_next_car.alarm[11] = _t
		_t += 15
		_next_car = _tmp
	}
}
