draw_rectangle(x-22,y+32,x+15,y+26, true);

// Invincibility Mode
if invincible{
	if invincible_timer mod 10 < 5{ //flashy
		gpu_set_fog(true, c_white, 0, 0)
		draw_self()
		gpu_set_fog(false, c_white, 0, 0)
	} else {
		draw_self()
	}
} else{
	draw_self()
}

// Indicator
draw_sprite(spr_indicator, 0, x, y - 50)

