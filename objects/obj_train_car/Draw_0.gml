/// @description Insert description here
// You can write your code in this editor

event_inherited()

if (current_health > 0)
{
	// Draw turrets
	var _w = sprite_get_width(spr_turret_base)
	var _turret_x = -(n_turrets - 1) * (_w + 1) * 0.5

	for (var i = 0; i < n_turrets; i++)
	{
		var _wp = localToWorld(x, y, phy_rotation, _turret_x, 0)
	
		draw_sprite_ext(spr_turret_base, 0, _wp[0], _wp[1], 1, 1, 0, c_white, 1)
		draw_sprite_ext(spr_dual_cannon, 0, _wp[0], _wp[1], 1, 1, -(phy_rotation + current_cannon_rotation[i]), c_white, 1)

		_turret_x += _w + 1;
	}
}
