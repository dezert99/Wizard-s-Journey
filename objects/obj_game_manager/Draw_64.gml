if timer > 0{ // draws timer
	draw_set_halign(fa_center)
	draw_text_transformed(view_wport[0]/2, view_hport[0]/2, string(ceil(timer/60)), 2, 2, 0)
}