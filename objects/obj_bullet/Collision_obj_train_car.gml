/// @description Insert description here
// You can write your code in this editor
if (faction == 1) && (other.current_health > 0)
{
	instance_destroy(self)
	
	if (!other.has_turret()) || (other.is_nuke())
	{
		other.deal_damage(damage)
		snd_hit(0.05);
	}
	else
	{
		snd_rico();
	}
}
