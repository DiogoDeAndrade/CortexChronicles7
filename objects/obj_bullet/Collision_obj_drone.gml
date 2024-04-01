/// @description Insert description here
// You can write your code in this editor
if (faction == 2) && (other.current_health > 0)
{
	instance_destroy(self)

	other.deal_damage(damage)
}
