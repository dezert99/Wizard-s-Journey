if(travel_direction == "left"){
	shoot = -8
	image_xscale = -1
}
else {
	shoot = 8
	image_xscale = 1
}

collide_with_player = collision_circle(x,y,collision_radius, obj_player_controls, false, true);
collide_with_arrow = collision_circle(x,y,collision_radius, obj_projectile, false, true);

x += shoot

if(collide_with_player && collide_with_player != ignore){
	if(attack_type == "damage"){
		collide_with_player.hit = true;
		collide_with_player.damage = damage
	}
	else if(attack_type = "freeze"){
		collide_with_player.frozen = true;
		collide_with_player.frozen_timer = collide_with_player.frozen_timer_max;
	}
	
	instance_destroy();
} else if(collide_with_arrow){
	collide_with_arrow.hit = true;
	instance_destroy();
}
