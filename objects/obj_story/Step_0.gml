/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if wait_time > 0
{
	wait_time--;
	if wait_time <= 0
	{
		next_step();
	}
}
