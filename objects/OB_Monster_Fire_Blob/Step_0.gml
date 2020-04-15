/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

action_timer--;

if (distance_to_object(OBJ_Player) < 100)
{
	if(action_timer <= 0)
	{
		facing = sign(OBJ_Player.x-x);
		sprite_index = SPR_Monster_Fire_Blob_Spit;
		SCR_Monster_Fire_Missle_At_Player_Directional(OBJ_Monster_Fire_Blob_Missle);
		action_timer = BLOB_ACTION_TIMER;
	}
}

if( sprite_index == SPR_Monster_Fire_Blob_Spit)
{
	//if its played one loop of animation switch back to normal walk
	if (image_index + image_speed >= image_number)
	{
		sprite_index = SPR_Monster_Fire_Blob;
	}
}
