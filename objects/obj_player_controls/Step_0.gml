//Movement mechanics
left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
jump = keyboard_check_pressed(vk_space)
grounded = place_meeting(x, y+1, obj_ground)

if left{ //moves left
	xspd = -mspd
}
if right{ //moves right
	xspd = mspd
}
if (left and right) or (!left and !right){ //doesn't move at all
	xspd = 0
}

if grounded{
	yspd = 0
	jumps_left = 2
	
} else{
	yspd += grav //player falls
}

if (jump and jumps_left > 0) { //player jumps
	yspd = -10
	jumps_left--;
}

if place_meeting(x + xspd, y, obj_ground){ //land horizontal collisions
	while !place_meeting(x + sign(xspd), y, obj_ground){
		x += sign(xspd)
	}
	xspd = 0
}

if place_meeting(x, y + yspd, obj_ground){ //land vertical collisions
	while !place_meeting(x, y + sign(yspd), obj_ground){
		y += sign(yspd)
	}
	yspd = 0
}

x += xspd
y += yspd
