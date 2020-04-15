/// @description Insert description here
// You can write your code in this editor

switch (state)
{
	case states.walking:
	{
		sprite_index = SPR_Player_Walk;
		SCR_Player_Walking();
		break;
	}
	case states.in_air:
	{
		SCR_Player_In_Air();
		break;
	}
	case states.ladder:
	{
		SCR_Player_Ladder();
		break;
	}
	case states.water:
	{
		SCR_Player_Water();
		break;
	}
	case states.dead:
	{
		SCR_Player_Dead();
		break;
	}
}

if(xspeed<0) facing =-1;
if(xspeed>0) facing =1;

image_xscale = facing;

throw_timer--;
if(throw_timer < 0) then throw_timer = 0;

if(living_state == living_states.been_hit and state != states.dead)
{
	been_hit_timer--;
	if(been_hit_timer > 0)
	{
		image_alpha = been_hit_timer mod 5;
	}
	else
	{
		living_state =living_states.normal;
	}
}


