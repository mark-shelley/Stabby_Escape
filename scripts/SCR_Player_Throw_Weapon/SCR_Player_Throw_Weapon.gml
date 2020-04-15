if(key_throw and throw_timer == 0)
{
	instance_create_layer(x,y+2,"Instances",OBJ_Thrown_Dagger);
	throw_timer = MAX_THROW_DELAY;
}
