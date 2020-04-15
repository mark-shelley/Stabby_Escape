#macro DAGGER_FLYING 0
#macro DAGGER_IN_WALL 1
/// @description Insert description here
// You can write your code in this editor
x=OBJ_Player.x+(OBJ_Player.facing*5);
y=OBJ_Player.y+3;
dx=OBJ_Player.facing;
thrown_speed =  5;
life_timer = 60;
image_xscale = dx;

state = DAGGER_FLYING;
