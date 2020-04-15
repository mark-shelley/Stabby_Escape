SCR_Player_Get_Inputs()

//we move player blindly into new position
dx = key_right + key_left;
xspeed = (dx*SPEED_WALKING);

//if not doing walking animation set it to walking

if (sprite_index <> SPR_Player_Walk) sprite_index = SPR_Player_Walk;

//Check if about to walk into wall
SCR_Player_H_Collision_Wall();

//Check under feet for floor
if(tilemap_get_at_pixel(map_id,x-4,y+8) !=SCENERY_TILE_WALL and tilemap_get_at_pixel(map_id,x+4,y+8) != SCENERY_TILE_WALL)
{
	state = states.in_air;
}

//jump command
if(key_jump)
{
	audio_play_sound(SND_Player_Jump_Up,0,0);
	yspeed = jump_height;
	y = y-1;
	state = states.in_air;	
}

//Check if entering ladder state
SCR_Player_Check_Ladder();

//update position
x=x+xspeed;

SCR_Player_Throw_Weapon();

if(key_next) room_goto(room1);
if(key_reset) room_restart();
