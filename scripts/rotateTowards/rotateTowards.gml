// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rotateTowards(_x, _y, _current_angle, _obj_type, _radius, _max_turn_speed)
{
	var _all = getAllInRadius(_obj_type, _x, _y, _radius, 0, 360);
	
	var _target;
	if (array_length(_all) > 0)
	{
		// Something in range
		var _target_object = _all[0];
		_target = point_direction(_x, _y, _target_object.x, _target_object.y);
		
		var _delta = angle_difference(_target, _current_angle)
		_delta = clamp(_delta, -_max_turn_speed, _max_turn_speed)
		
		return (_current_angle + _delta + 360) % 360;
	}
	
	return -1;
}
