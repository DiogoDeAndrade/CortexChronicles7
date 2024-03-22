current_health = max_health

function deal_damage(_damage)
{
	if (current_health <= 0)
	{
		return;
	}
	current_health -= _damage;
	
	if (current_health <= 0)
	{
		die();
	}
	else
	{
		hit_effect();
	}
}

function hit_effect()
{
	if (timeline_running == false)
	{
		timeline_index = tl_flash_red
		timeline_position = 0
		timeline_running = true
	}
}

function die()
{
	sprite_index = spr_explosion;
	image_index = 0;
	image_xscale = 2;
	image_yscale = 2;
}
