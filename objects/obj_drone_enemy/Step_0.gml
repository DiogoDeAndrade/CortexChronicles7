
if instance_exists(obj_drone)
{
	var _player = obj_drone;
	
	var pd = point_direction(x, y, _player.x, _player.y);

	var dd = angle_difference(image_angle, pd);

	image_angle -= min(abs(dd), 5) * sign(dd);

	var _elapsed = current_time - time_of_last_pos_change

	if (_elapsed > 2000)
	{
		offset_x = random_range(30, 60)
		offset_y = random_range(30, 60)
	
		if (random_range(0, 100) < 50) offset_x = -offset_x
		if (random_range(0, 100) < 50) offset_y = -offset_y
		
		time_of_last_pos_change = current_time
	}

	var _target_x = _player.x + offset_x
	var _target_y = _player.y + offset_y
	var _dx = _target_x - x
	var _dy = _target_y - y
	var _distance = sqrt(_dx * _dx + _dy * _dy)
	
	if (_distance < max_speed)
	{
		x = _target_x
		y = _target_y
	}
	else
	{
		_dx /= _distance
		_dy /= _distance
		
		x += _dx * max_speed
		y += _dy * max_speed
	}

	_elapsed = current_time - time_of_last_shot;
	if (_elapsed > 1000) 
	{
		var _wp = localToWorld(x, y, -image_angle, 7, 0)
		var _rotation = image_angle

		var _inst = instance_create_layer(_wp[0], _wp[1], "Bullets", obj_bullet);
		with (_inst)
		{
			faction = 2
			image_angle = _rotation;
			image_blend = c_red
			hspeed = lengthdir_x(2, image_angle)
			vspeed = lengthdir_y(2, image_angle)
		}
		
		time_of_last_shot = current_time
	}
}