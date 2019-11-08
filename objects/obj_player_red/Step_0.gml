// Inherit the parent event
event_inherited();

if room == rm_game_over{
	if placed == false{
		if WIN_ORDER[0] == 1{ // came first 
			x = 512
			y = 352
			placed = true
		} else if WIN_ORDER[0] == 2{ // came second
			x = 384
			y = 416
			placed = true
		} else if WIN_ORDER[0] == 3{ //came third
			x = 640
			y = 480
			placed = true 
		} else{ // disqualified
			x = random_place
			y = 544
			placed = true
		}
	}
}
