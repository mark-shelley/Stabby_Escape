if(tilemap_get_at_pixel(map_id,x-6,y-8)  == SCENERY_TILE_WALL or tilemap_get_at_pixel(map_id,x+6,y-8) == SCENERY_TILE_WALL)
{
	yspeed=0;
}