#macro SCENERY_TILE_EMPTY	0
#macro SCENERY_TILE_WALL	1
#macro SCENERY_TILE_LADDER	2
#macro SCENERY_TILE_WATER	3

#macro MAX_THROW_DELAY		30

#macro SPEED_WALKING		2
#macro SPEED_SWIMMING		1.5

#macro JUMP_AIR				-5;
#macro JUMP_OUT_OF_WATER	-3;

#macro LIVES_STARTING		3;


hearts = LIVES_STARTING;
been_hit_timer = 30;
dead_timer = 0;

dx = 0;
grav = 0.2;
jump_height = JUMP_AIR;

yspeed = 0;
facing = 0;

//this is to limit how fast a player can throw a weapon
throw_timer = MAX_THROW_DELAY;

globalvar lay_id;
globalvar map_id;

lay_id = layer_get_id("Tiles_1");
map_id = layer_tilemap_get_id(lay_id);

enum states
{
	standing,
	walking,
	in_air,
	water,
	ladder,
	dead
}

enum living_states
{
	normal,
	been_hit
}

facing = 1;
state = states.in_air;
living_state = living_states.normal;

