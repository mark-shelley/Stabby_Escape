/// @description Insert description here
// You can write your code in this editor
xspeed = (sign(facing)*BLOB_BASIC_SPEED);

//if reaches end of platform or hits a wall turn around
if(tilemap_get_at_pixel(map_id, x+(sign(facing)*10), y) == SCENERY_TILE_WALL or tilemap_get_at_pixel(map_id, x+(sign(xspeed)*3), y+6) != SCENERY_TILE_WALL)
{
	facing = -facing;
	xspeed = 0;
}


if(alive == false)
{
	xspeed = 0;
	sprite_index = death_animation;
	if (image_index + image_speed >= image_number)
	{
		instance_destroy(id);
	}
}

x = x + xspeed;

image_xscale = facing;