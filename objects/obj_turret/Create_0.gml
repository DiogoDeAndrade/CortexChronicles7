/// @description Insert description here
// You can write your code in this editor
event_inherited()

explosion_scale = 1
hp_width = 4
hp_height = 1
hp_offset = 5
hp_outline = false

has_target = false
time_of_last_shot = -1000
damage = 5
cooldown = 1000
shot_speed = 2
rotation_max_speed = 10
shot_count = 1
shot_spread = 30

offset_x = 0
offset_y = 0

explosion_sound = snd_turret_explode

function shoot(_rot)
{
		// Shoot
	var _wp = localToWorld(x, y, -_rot, 11, 0)
	var _rotation = _rot
	var _damage = damage
	var _speed = shot_speed
	var _inst = instance_create_layer(_wp[0], _wp[1], "Bullets", obj_bullet);
	with (_inst)
	{
		faction = 2
		damage = _damage
		image_angle = _rotation;
		image_blend = c_yellow
		hspeed = lengthdir_x(_speed, image_angle)
		vspeed = lengthdir_y(_speed, image_angle)
	}
}
