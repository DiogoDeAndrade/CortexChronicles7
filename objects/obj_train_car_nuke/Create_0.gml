/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

explosion_time = -1000

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
	
	instance_create_layer(x, y, "Bullets", obj_nuke_blast);
	
	instance_destroy(obj_drone)
}

function is_nuke()
{
	return true;
}
