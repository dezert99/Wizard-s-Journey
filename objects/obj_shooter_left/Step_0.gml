if shoot_timer > 0{
	shoot_timer -= 1
} else{
	var projectile = instance_create_depth(x, y - 16, -1, obj_projectile)
	with projectile{
		direc = -1
		image_xscale = -1
	}
	shoot_timer = shoot_timer_start
}