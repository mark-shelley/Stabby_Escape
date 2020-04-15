/// @description Insert description here
// You can write your code in this editor
if(state == DAGGER_FLYING)
{
	other.alive = false;
	instance_destroy(id); //destroy dagger
	audio_play_sound(SND_Wall_Hit,0,false);
}