/// @description Insert description here
// You can write your code in this editor
draw_self()

var _anchor_point1 = localToWorld(x, y, direction, link1_pos_x, 0)

draw_sprite_ext(spr_turret_base, 0, _anchor_point1[0], _anchor_point1[1], 0.2, 0.2, 0, c_green, 1)

if (next_car != noone)
{
	var _anchor_point2 = localToWorld(next_car.x, next_car.y, -next_car.direction, next_car.link2_pos_x, 0)
	draw_sprite_ext(spr_turret_base, 0, _anchor_point2[0], _anchor_point2[1], 0.2, 0.2, 0, c_aqua, 1)
}
