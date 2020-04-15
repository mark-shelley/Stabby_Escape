var damage = argument0;

if(living_state == living_states.normal)
{
	audio_play_sound(SND_Player_Ouch,0,0);
	hearts = hearts - damage;
	if(hearts <= 0) state = states.dead;

	x = x + (sign(x - other.id.x) * 4);
	y = y - 4;
	living_state = living_states.been_hit;
	been_hit_timer = 100;
}
