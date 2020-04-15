/// @description Insert description here
// You can write your code in this editor

var destroy = false;

life_timer--;
if (life_timer < 0) destroy = true;

if (tilemap_get_at_pixel(map_id,x+(sign(dx)*4),y) == SCENERY_TILE_WALL) and state = DAGGER_FLYING
{
	state = DAGGER_IN_WALL;
	life_timer = 30;
	if(sprite_index<> SPR_Dagger_In_Wall) sprite_index = SPR_Dagger_In_Wall;
	audio_play_sound(SND_Wall_Hit,0,false);
}

if (state == DAGGER_FLYING) x=x+(sign(dx)*thrown_speed);

if (destroy == true) instance_destroy(id);
