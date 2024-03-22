/// @description Insert description here
// You can write your code in this editor
var _prev_rotation = turret_rotation
var _ret = rotateTowards(x, y, turret_rotation, obj_train_car, max_radius, max_rotation_rate)
if (_ret < 0)
{
	_ret = rotateTowards(x, y, turret_rotation, obj_train, max_radius, max_rotation_rate)
}

if (_ret >= 0)
{
	turret_rotation = _ret
	
	if (abs(angle_difference(_prev_rotation, turret_rotation)) < 1)
	{
		var _elapsed = current_time - time_of_last_shot;
		if (_elapsed > fire_rate)
		{
			var _wp = localToWorld(x, y, -turret_rotation, 30, 0)
			var _rotation = turret_rotation

			var _inst = instance_create_layer(_wp[0], _wp[1], "Instances", obj_big_bullet);
			with (_inst)
			{
				faction = 1
				image_angle = _rotation;
				image_blend = c_red
				phy_speed_x = lengthdir_x(3, image_angle)
				phy_speed_y = lengthdir_y(3, image_angle)
				phy_rotation = -_rotation
				phy_fixed_rotation = true;
			}
		
			time_of_last_shot = current_time
		}
	}
}
