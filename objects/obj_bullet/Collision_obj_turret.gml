/// @description Insert description here
// You can write your code in this editor
if (faction == 1) && (other.current_health > 0)
{
	instance_destroy(self)

	snd_hit(0.05);

	other.deal_damage(damage)
}
