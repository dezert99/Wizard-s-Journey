image_angle += 2 //rotating around the origin

if place_meeting(x, y, obj_player_controls){ //detects if there is a collision with ANY player
	var player = instance_nearest(x, y, obj_player_controls) //detects who is being hurt
	with player {
		mana -= 10
	}
}