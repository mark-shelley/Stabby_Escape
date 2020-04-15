SCR_Player_Get_Inputs();
yspeed = 0;
dx = key_right + key_left;
xspeed = (dx*SPEED_WALKING);


//release from ladder
if(key_jump)
{
	xspeed=0;
	yspeed=jump_height;
	
	state = states.in_air;
}

//allow player to shimmy left and right on ladder
if(tilemap_get_at_pixel(map_id,x+sign(xspeed)*8,y) == SCENERY_TILE_LADDER)
{
	x=x+xspeed;
}

//move up
if(key_up)
{
	if(tilemap_get_at_pixel(map_id,x,y-1) == SCENERY_TILE_LADDER)
	{
		yspeed = -3;
	}
}

//move down
if(key_down)
{
	if(tilemap_get_at_pixel(map_id,x,y+8) == SCENERY_TILE_LADDER)
	{
		yspeed = 3;
	}
}


//update animations
if ((sprite_index <> SPR_Player_Ladder) and yspeed <>0) sprite_index = SPR_Player_Ladder;
if ((sprite_index <> SPR_Player_Ladder_Still) and yspeed ==0) sprite_index = SPR_Player_Ladder_Still;

//move
y=y+yspeed;
