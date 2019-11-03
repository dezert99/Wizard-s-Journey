if(travel_direction == "left"){
	shoot = -8
	image_xscale = -1
}
else {
	shoot = 8
	image_xscale = 1
}

collide_with_player = collision_circle(x,y,collision_radius, obj_player_controls, false, true);

x += shoot

if(collide_with_player && collide_with_player != ignore){
	collide_with_player.hit = true;
	collide_with_player.damage = damage
	instance_destroy();
}
