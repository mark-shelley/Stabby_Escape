/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
blob_trail_timer--
if(blob_trail_timer<=0)
{
instance_create_layer(x,y+4,"Instances",OBJ_Monster_Acid_Blob_Trail);
	blob_trail_timer = 20;
}
