/// @description Insert description here
// You can write your code in this editor
if (explosion_time > 0)
{
	var _elapsed = current_time - explosion_time

if (_elapsed > 3000)
	{
		room_restart()
	}
}
