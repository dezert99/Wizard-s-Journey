if timer > 0{
	timer -= 1
} else{
	camera_y -= 1 // camera movement up (pixels per frame)
	camera_y = clamp(camera_y, 0, room_height) // stops the camera at the top of the tower
}

camera_set_view_pos(view_camera[0], 0, camera_y)

show_debug_message("Win order: "+string(WIN_ORDER));

if keyboard_check_pressed(vk_escape){ // fullscreen
	if window_get_fullscreen(){
		window_set_fullscreen(false)
	} else{
		window_set_fullscreen(true)
	}
} 

if room == rm_tower{
	if(LIVING==0){
		room_goto(rm_game_over);	
		LIVING = -1;
	}
}

if(room == rm_game_over){
	if(keyboard_check_pressed(vk_tab)){
		room_goto(rm_tower);	
	}
}