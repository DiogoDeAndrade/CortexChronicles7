/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

alarm[10] = 60 * 5

global.wave_index = 0

function next_wave()
{
	if global.wave_index >= array_length(global.waves)
	{
		global.wave_index = 0
	}
	
	if global.wave_index < array_length(global.waves)
	{
		var _wave = global.waves[global.wave_index]
		
		global.wave_index++
		
		for (var _i = 0; _i < array_length(_wave); _i++)
		{
			var _subwave = _wave[_i]
			var _car = get_car(_subwave[0])
			if (_car != noone)
			{
				var _cooldown = _subwave[1]
				var _shot_count = _subwave[2]
				var _spread = _subwave[3]
				var _turrets = _subwave[4]
				for (var _j = 0; _j < array_length(_turrets); _j++)
				{
					_car.activate_turret(_turrets[_j], _cooldown, _shot_count, _spread)
				}
			}
		}
	}
}
