/// @description Insert description here
// You can write your code in this editor

var _elapsed = current_time - time_of_last_shot
if (_elapsed < 1000)
{
	return;
}

var _w = sprite_get_width(spr_turret_base)
var _turret_x = -(n_turrets - 1) * (_w + 1) * 0.5

for (var i = 0; i < n_turrets; i++)
{
	if (!turret_target[i]) continue;
	
	var _rotation = (phy_rotation + current_cannon_rotation[i]);
	var _wp = localToWorld(x, y, phy_rotation, _turret_x, 0)
	var _wp1 = localToWorld(_wp[0], _wp[1], _rotation, 8, -3)
	var _wp2 = localToWorld(_wp[0], _wp[1], _rotation, 8, 3)
	
	var _inst = instance_create_layer(_wp1[0], _wp1[1], "Instances", obj_bullet);
	with (_inst)
	{
		faction = 0
		image_angle = -_rotation;
		image_blend = c_yellow
		phy_speed_x = lengthdir_x(4, image_angle)
		phy_speed_y = lengthdir_y(4, image_angle)
		phy_rotation = _rotation
		phy_fixed_rotation = true;
	}
	_inst = instance_create_layer(_wp2[0], _wp2[1], "Instances", obj_bullet);
	with (_inst)
	{
		faction = 0
		image_angle = -_rotation;
		image_blend = c_yellow
		phy_speed_x = lengthdir_x(4, image_angle)
		phy_speed_y = lengthdir_y(4, image_angle)
		phy_rotation = _rotation
		phy_fixed_rotation = true;
	}
	
	_turret_x += _w + 1;
}

time_of_last_shot = current_time