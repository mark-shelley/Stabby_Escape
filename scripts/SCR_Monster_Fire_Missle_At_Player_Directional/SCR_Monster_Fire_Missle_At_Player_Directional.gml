//argument 0 is OBJECT type of missle
var ex, ey;
//get vector infomation of calling monster to player
ex = instance_nearest(x, y, OBJ_Player).x;
ey = instance_nearest(x, y, OBJ_Player).y;
with (instance_create_layer(x, y, "Instances",argument0))
{
	//use built in vector Direction varible
	direction = point_direction(x, y, ex, ey);
}
   