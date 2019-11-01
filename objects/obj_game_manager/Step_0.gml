if timer > 0{
	timer -= 1
} else{
	camera_y -= 0.5 // camera movement up (pixels per frame)
	camera_y = clamp(camera_y, 0, room_height) // stops the camera at the top of the tower
}

camera_set_view_pos(view_camera[0], 0, camera_y)