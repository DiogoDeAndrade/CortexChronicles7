/// @description Insert description here
// You can write your code in this editor
if (faction == 1) && (other.current_health > 0)
{
	instance_destroy(self)
	
	if (other.count_cars() <= 1)
	{
		other.deal_damage(damage)
	}
}
