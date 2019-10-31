x += spd * direc //direc is changed depending on if it is shot left (-1) or right (1)

if place_meeting(x, y, obj_player_controls){ //detects if there is a collision with ANY player
	var player = instance_nearest(x, y, obj_player_controls) //detects who is being hurt
	with player {
		mana -= 10
	}
	instance_destroy()
}

if x > (room_width + 100) or x < -100{
	instance_destroy()
}