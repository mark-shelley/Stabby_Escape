//check if im over a ladder tile
if(tilemap_get_at_pixel(map_id,x+(sign(xspeed)*4),y-4) == SCENERY_TILE_LADDER or tilemap_get_at_pixel(map_id,x+(sign(xspeed)*4),y+4) == SCENERY_TILE_LADDER)
{
	//am i pushing up or down
	if(key_down or key_up)
	{
		//enter ladder state
		state = states.ladder;
		xspeed = 0;
		yspeed = 0;;
	}
}
