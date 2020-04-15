SCR_Player_Get_Inputs()

dx = key_right + key_left;
xspeed = (dx*SPEED_WALKING);
yspeed = yspeed + grav;
if (yspeed > 3) yspeed = 3; 

//check to see if about to fly horizontaly into wall
SCR_Player_H_Collision_Wall();

//checking Vertical wall collision

//If going downwards
if (yspeed >= 0)
{
	if(tilemap_get_at_pixel(map_id,x-4,y+8) == SCENERY_TILE_WALL or tilemap_get_at_pixel(map_id,x+4,y+8) == SCENERY_TILE_WALL)
	{
		yspeed = 0;
		y=y-(y mod 8);
		state = states.walking
	}
}

//if heading upwards
if (yspeed < 0)
{
	SCR_Player_V_Collision_Celling()
}

//check if entering other states
SCR_Player_Check_Ladder();
SCR_Player_Check_Water();

//other allowed actions
SCR_Player_Throw_Weapon();

//update animations
if(yspeed<0) sprite_index = SPR_Player_Jump;
if(yspeed>0) sprite_index = SPR_Player_Falling;


//update postion
x=x+xspeed;
y=y+yspeed;
