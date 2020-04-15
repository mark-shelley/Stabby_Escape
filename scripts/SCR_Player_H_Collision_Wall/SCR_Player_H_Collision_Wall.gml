if(tilemap_get_at_pixel(map_id, x+(sign(xspeed)*10), y-6) == SCENERY_TILE_WALL or tilemap_get_at_pixel(map_id, x+(sign(xspeed)*10), y+6) == SCENERY_TILE_WALL)
{
	xspeed = 0;
}