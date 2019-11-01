if(image_index>=0 && image_index <=46){
	can_do_damage = true;	
}
else {
	can_do_damage = false;	
}

if image_index > image_number - image_speed image_speed = -1;
if image_index + image_speed < 0 image_speed = 1;

if place_meeting(x, y, obj_player_controls){ //detects if there is a collision with ANY player
	var player = instance_nearest(x, y, obj_player_controls) //detects who is being hurt
	with player {
		mana -= 10
		//add invincibility
	}
}