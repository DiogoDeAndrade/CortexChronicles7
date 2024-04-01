/// @description New wave timer

if !instance_exists(obj_turret)
{
	next_wave()
}

if (instance_exists(obj_drone))
{
	var _player = obj_drone
	
	// Count drones
	var _count = 0
	with (obj_drone_enemy)
	{
		_count++;
	}
	
	if (_count < 2) && (instance_exists(obj_turret))
	{
		var _top = false
		var _bottom = false
		
		with (obj_turret)
		{
			if (self.base_rotation > 0) _top = true
			else _bottom = true
		}
		
		var _spawn = false
		if (!_top && _player.y < 115) _spawn = true
		else if (!_bottom && _player.y > 140) _spawn = true
		
		if (_spawn)
		{
			var _inst = instance_create_layer(_player.x + 320, _player.y, "Instances", obj_drone_enemy);
		}
	}
}


alarm[10] = 60 * 5
