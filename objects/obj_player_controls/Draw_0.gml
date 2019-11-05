//foot hitbox display
//draw_rectangle(x-22,y+38,x+15,y+26, true);
draw_self();
// Invincibility
if invincible{
	if invincible_timer mod 10 > 5{
		gpu_set_fog(true, c_white, 0, 0)
		draw_self()
		gpu_set_fog(false, c_white, 0, 0)
	} else{
		draw_self()
	}
} 
else if frozen{
	image_blend = make_color_rgb(0,100,255)
	draw_self()
}
else{
	draw_self()
	image_blend = c_white;
}

