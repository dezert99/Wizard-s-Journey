draw_text(d_draw_x,d_draw_y,string(testCollideCount));

if(keyboard_check_pressed(jump_key)){
	draw_text(d_draw_x,d_draw_y+10,"true");	
}

// Indicator
if y > camera_get_view_y(view_camera[0]) + view_hport[0]{ //if player is below the camera
    draw_sprite(spr_indicator, 0, x, 750) //draw indicator
}