event_inherited();

if room == rm_game_over{
	if WIN_ORDER[1] == 1{ // came first 
		x = 512
		y = 352
	} else if WIN_ORDER[1] == 2{ // came second
		x = 384
		y = 416
	} else if WIN_ORDER[1] == 3{ //came third
		x = 640
		y = 480
	} else{ // disqualified
		x = 768
		y = 544
	}
}

