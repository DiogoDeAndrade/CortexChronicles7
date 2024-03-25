/// @description Insert description here
// You can write your code in this editor

var _dt = delta_time / 1000000;
alpha = clamp(alpha + alpha_inc * _dt, 0, 1)
if (alpha_inc < 0) && (alpha == 0)
{
	alpha_inc = 0;
}
else if (alpha_inc > 0) && (alpha == 1)
{
	room_goto(next_screen_name)
}
