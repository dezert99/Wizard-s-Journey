max_confetti = 60 //maximum number of confetti

if WIN_ORDER[0] == 1{ // red wins
	for(i = 0; i < max_confetti; i += 1){
		instance_create_depth(0, 0, 0, obj_red_confetti)
	}
} else if WIN_ORDER[1] == 1{ // blue wins
	for(i = 0; i < max_confetti; i += 1){
		instance_create_depth(0, 0, 0, obj_blue_confetti)
	}
	
} else if WIN_ORDER[2] == 1{ // yellow wins
	for(i = 0; i < max_confetti; i += 1){
		instance_create_depth(0, 0, 0, obj_yellow_confetti)
	}
}
	