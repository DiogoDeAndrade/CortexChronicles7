/// @description Insert description here
// You can write your code in this editor
draw_self();

if (current_health > 0)
{
	draw_sprite_ext(spr_tank_turret, 0, x, y, 1, 1, turret_rotation, c_white, 1)
}