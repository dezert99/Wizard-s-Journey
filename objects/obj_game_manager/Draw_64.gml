if(room = rm_tower){
	if timer > 0{ // draws timer and title
		draw_set_halign(fa_center)
		draw_set_color(make_colour_rgb(47, 255, 35))
		draw_text_transformed(view_wport[0]/2, view_hport[0]/2, string(ceil(timer/60)), 2, 2, 0)
		draw_sprite(spr_title, 0, view_wport[0]/2, view_hport[0]/2 - 250)
	}

	// Mana bars
	// Red player
	draw_sprite(spr_mana_bar, 0, 210, 30)
	draw_sprite_ext(spr_player1_mana, 0, 103, 30, obj_player_red.mana/100, 1, 0, c_white, 0.9)

	// Blue player
	draw_sprite(spr_mana_bar, 0, 510, 30)
	draw_sprite_ext(spr_player2_mana, 0, 403, 30, obj_player_blue.mana/100, 1, 0, c_white, 0.9)

	// Yellow player
	draw_sprite(spr_mana_bar, 0, 810, 30)
	draw_sprite_ext(spr_player3_mana, 0, 703, 30, obj_player_yellow.mana/100, 1, 0, c_white, 0.9)

	// Map and placement marker
	draw_sprite(spr_map, 0, 1010, 30)
	var marker = 30 + (250*(camera_get_view_y(view_camera[0])/(room_height-view_hport[0])))
	draw_sprite(spr_map_marker, 0, 1002, marker)	
}

