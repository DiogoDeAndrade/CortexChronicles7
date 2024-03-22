/// @description Insert description here
// You can write your code in this editor

rotation_speed = 2
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
		physics_joint_delete(self.prev_car.joint_id)
		self.prev_car.joint_id = -1;
	}
}
