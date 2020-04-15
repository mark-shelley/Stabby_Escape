/// @description Insert description here
// You can write your code in this editor
if (yspeed>0 and id.y-4<other.y and other.alive == true)
{
	audio_play_sound(SND_Thud,0,0)
	other.alive = false;
	yspeed=jump_height;
}
else
{
	if(other.alive == true) SCR_Player_Get_Hit(1);
}
