if timer > 0{
	timer -= 1
} else{
	camera_y -= 0.6 // camera movement up (pixels per frame)
	camera_y = clamp(camera_y, 0, room_height) // stops the camera at the top of the tower
}

camera_set_view_pos(view_camera[0], 0, camera_y)

if keyboard_check_pressed(vk_escape){ // fullscreen
	if window_get_fullscreen(){
		window_set_fullscreen(false)
	} else{
		window_set_fullscreen(true)
	}
} 