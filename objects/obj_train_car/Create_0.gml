/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _rot = 0;

switch (turret_orientation)
{
	case 0: _rot = choose(90, 270); break;
	case 1: _rot = 90; break;
	case 2: _rot = 270; break;
}

for (var i = 0; i < n_turrets; i++)
{
	current_cannon_rotation[i] = _rot;
	base_cannon_rotation[i] = _rot;
	turret_target[i] = false
	
	if (turret_orientation == 0) 
	{
		_rot += 180;
		if (_rot >= 360) _rot -= 360;
	}
}

turret_radius = 400
max_turn_speed = 2
turret_angle = 45
time_of_last_shot = -1000

link1_pos_x = -20
link2_pos_x = 20
explosion_scale = 1

function activate_turret(_index, _cooldown, _shot_count, _spread)
{
	var _col = _index % 3;
	var _x = 0
	var _y = 0
	
	if (_col == 0) _x = -10
	else if (_col == 1) _x = 0
	else _x = 10
	
	if (_index < 3) _y = -8
	else _y = 8
	
	var _d = depth
	var _owner = self
	var _inst = instance_create_layer(x + _x, y + _y, "Instances", obj_turret);
	with (_inst)
	{
		offset_x = _x
		offset_y = _y
		
		depth = _d + 5;
		if (_index < 3) base_rotation = 90;
		else base_rotation = -90;
		rotation = base_rotation
		
		if (_index >= 3)
		{
			hp_offset = -hp_offset;
		}
		
		owner = _owner
		cooldown = _cooldown
		shot_count = _shot_count
		shot_spread = _spread
	}
	
	return _inst
}

function has_turret()
{
	var _owner = self
	
	with (obj_turret)
	{
		if owner == _owner
		{
			return true
		}
	}
	
	return false
}
