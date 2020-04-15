SCR_Player_Get_Inputs()

dx = key_right + key_left;
xspeed = (dx*SPEED_SWIMMING);

SCR_Player_Throw_Weapon()

if (sprite_index <> SPR_Player_Swim) sprite_index = SPR_Player_Swim;

//set it so player will slowly sink if left alone
yspeed=yspeed + 0.2;
if(yspeed > 0.5) yspeed=0.5;

//check if hit the bottom of water, then stop
if(tilemap_get_at_pixel(map_id,x-4,y+8) == SCENERY_TILE_WALL and tilemap_get_at_pixel(map_id,x+4,y+8) == SCENERY_TILE_WALL)
{
	yspeed = 0;
}

//check if swimming into horizontal walls
SCR_Player_H_Collision_Wall();

//check to see if player can leap out of water, on wall tile above him
if (yspeed < 0) SCR_Player_V_Collision_Celling();

//swim up logic
if(key_jump)
{
	//if swim up will get you out of the surface of the water
	if(tilemap_get_at_pixel(map_id, x, y-5) == SCENERY_TILE_EMPTY)
	{
		yspeed = JUMP_OUT_OF_WATER;
		state = states.in_air;
	}
	//else still keep swimming up
	else
	{
		yspeed = yspeed - 3;
	}
}

//update move
x = x + xspeed;
y = y + yspeed;

