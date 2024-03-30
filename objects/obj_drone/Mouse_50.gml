/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var _elapsed = current_time - time_of_last_shot;
if (_elapsed > 100) && (!overheat)
{
	var _wp = localToWorld(x, y, -image_angle, 7, 0)
	var _rotation = image_angle

	var _inst = instance_create_layer(_wp[0], _wp[1], "Bullets", obj_bullet);
	with (_inst)
	{
		faction = 1
		image_angle = _rotation;
		image_blend = c_black
		hspeed = lengthdir_x(4, image_angle)
		vspeed = lengthdir_y(4, image_angle)
	}
		
	time_of_last_shot = current_time
	
	heat = heat + heatSpeed
	if (heat > 100)
	{
		overheat = true
	}
}
