/// @description Insert description here
// You can write your code in this editor

event_inherited();

// Draw turrets
var _w = sprite_get_width(spr_turret_base)
var _turret_x = -(n_turrets - 1) * (_w + 1) * 0.5

for (var i = 0; i < n_turrets; i++)
{
	var _wp = localToWorld(x, y, phy_rotation, _turret_x, 0)
	var _enemies = getAllInRadius(obj_enemy, _wp[0], _wp[1], turret_radius, -(phy_rotation + base_cannon_rotation[i]), turret_angle)
	var _target;
	if (array_length(_enemies) > 0)
	{
		// Something in range
		var obj = _enemies[0];
		_target = -point_direction(x, y, obj.x, obj.y) - phy_rotation;
		
		turret_target[i] = true
	}
	else
	{
		_target = base_cannon_rotation[i]
		
		turret_target[i] = false
	}

	var _delta = angle_difference(_target, current_cannon_rotation[i])
	_delta = clamp(_delta, -max_turn_speed, max_turn_speed)
	current_cannon_rotation[i] += _delta
	current_cannon_rotation[i] = (current_cannon_rotation[i] + 360) % 360
}

