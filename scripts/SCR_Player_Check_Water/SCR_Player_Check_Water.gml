if (tilemap_get_at_pixel(map_id,x+xspeed,y+yspeed) ==SCENERY_TILE_WATER)
{
	xspeed = 0;
	yspeed = 5;
	state = states.water;
	sprite_index = SPR_Player_Ladder;
}
