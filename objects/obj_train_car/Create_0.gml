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
