/// @description Insert description here
// You can write your code in this editor
event_inherited()

x = owner.x + offset_x
y = owner.y + offset_y

image_angle = rotation

var _enemies = getAllInRadius(obj_drone, x, y, 200, base_rotation, 91)
var _target;
if (array_length(_enemies) > 0)
{
	// Something in range
	var _obj = _enemies[0];
	var _enemy_x = _obj.x
	var _enemy_y = _obj.y	
	
	// Prediction
	var _dist = point_distance(x, y, _enemy_x, _enemy_y)
	var _time_to_reach = _dist / shot_speed
	_enemy_x = _enemy_x + _obj.hspeed * _time_to_reach
	_enemy_y = _enemy_y + _obj.vspeed * _time_to_reach
	
	_target = point_direction(x, y, _enemy_x, _enemy_y);
		
	has_target = true
}
else
{
	_target = base_rotation
		
	has_target = false
}

var _dd = angle_difference(rotation, _target);
rotation -= min(abs(_dd), rotation_max_speed) * sign(_dd)

image_angle = rotation

// Shooting
_dd = angle_difference(rotation, _target)
if (_dd < 1) && (has_target) 
{
	var _elapsed = current_time - time_of_last_shot
	if _elapsed > cooldown
	{
		if shot_count == 1
		{		
			shoot(rotation)
		}
		else
		{
			var _a = rotation - shot_spread * 0.5
			var _a_inc = shot_spread / (shot_count - 1)
			for (var _i = 0; _i < shot_count; _i++)
			{
				shoot(_a)
				_a += _a_inc
			}
		}
		time_of_last_shot = current_time
	}
}
