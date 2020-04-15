/// @description Insert description here
// You can write your code in this editor
/*
if( state == states.in_air ) draw_text(50,50,"state	: in_air");
if( state == states.walking ) draw_text(50,60,"state	: walking");
draw_text(50,70,"xspeed	: "+string(xspeed));
draw_text(50,80,"dy		: "+string(dy));
draw_text(50,90,"grav	: "+string(grav));
*/

//display hearts remaining
for(var lives_count=0;lives_count < hearts;lives_count++)
{
	draw_sprite(SPR_Player_Hearts,1,10+(lives_count*18),10);
}

