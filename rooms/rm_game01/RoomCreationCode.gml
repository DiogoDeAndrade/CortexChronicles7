// Each line [ car_number, cooldown, shot_count, spread, [ sub_turret_id, sub_turret_it ... ] ]

global.waves = [
	// Wave 1
	[ [ 2, 1000, 1, 30, [ 1, 4 ] ], 
	  [ 3, 1000, 1, 30, [ 1, 4 ] ] ],
	// Wave 2
	[ [ 1, 1000, 1, 30, [ 1, 4 ] ],
	  [ 2, 1000, 1, 30, [ 1, 4 ] ], 
	  [ 3, 1000, 1, 30, [ 1, 4 ] ],
	  [ 4, 1000, 1, 30, [ 1, 4 ] ] ],
	// Wave 3
	[ [ 1, 1000, 1, 30, [ 1, 4 ] ],
	  [ 2, 1000, 1, 30, [ 1, 4 ] ], 
	  [ 3, 1000, 1, 30, [ 1, 4 ] ],
	  [ 4, 1000, 1, 30, [ 1, 4 ] ] ],
	// Wave 4
	[ [ 1, 1000, 1, 30, [ 1, 4 ] ],
	  [ 2, 1000, 3, 45, [ 1, 4 ] ], 
	  [ 3, 1000, 3, 45, [ 1, 4 ] ],
	  [ 4, 1000, 1, 30, [ 1, 4 ] ] ],
	// Wave 3
	[ [ 1, 1000, 1, 30, [ 0, 2, 4 ] ],
	  [ 2, 1000, 1, 30, [ 1, 3, 5 ] ], 
	  [ 3, 1000, 1, 30, [ 0, 2, 4 ] ],
	  [ 4, 1000, 1, 30, [ 1, 3, 5 ] ] ],
]

global.next_level = rm_story02

window_set_cursor(cr_cross)

if !instance_exists(obj_sound_manager)
{
	var _inst = instance_create_layer(0, 0, "Instances", obj_sound_manager);
}

obj_sound_manager.play_wind();
obj_sound_manager.play_main_music();
