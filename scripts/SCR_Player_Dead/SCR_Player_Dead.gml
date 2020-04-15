yspeed=-2;

y=y+yspeed;
dead_timer++;
sprite_index = SPR_Player_Dead;
if(y==0 or dead_timer>50)
{
	room_restart();
}

