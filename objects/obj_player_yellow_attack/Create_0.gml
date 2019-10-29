if obj_player_yellow.image_xscale == -1 { // player facing left
	image_xscale = -1
	shoot = -8
} else{ // player shooting right
	shoot = 8
	image_xscale = 1
}