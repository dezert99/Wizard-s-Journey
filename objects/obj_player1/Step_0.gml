//Movement mechanics
left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
jump = keyboard_check(vk_space)
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
	if jump{ //player jumps
		yspd = -10
	}
} else{
	yspd += grav //player falls
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
