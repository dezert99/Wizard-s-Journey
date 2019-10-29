//this is a test

// Movement mechanics
left = keyboard_check(left_key)
right = keyboard_check(right_key)
jump = keyboard_check_pressed(jump_key)
grounded = place_meeting(x, y+1, obj_ground)
spell_cast = keyboard_check_pressed(cast_key)

if left{ // moves left
	sprite_index = spr_run
	image_xscale = -1
	xspd = -mspd
}
if right{ // moves right
	sprite_index = spr_run
	image_xscale = 1
	xspd = mspd
}
if (left and right) or (!left and !right){ // doesn't move at all
	sprite_index = spr_idle
	xspd = 0
}

if grounded{
	yspd = 0
	jumps_left = 2
	
} else{
	yspd += grav // player falls
	if yspd < 0{
		sprite_index = spr_jump // jumping animation
	} else{
		sprite_index = spr_falling // falling animation
	}
}

if (jump and jumps_left > 0) { // player jumps
	yspd = -10
	jumps_left--;
}

if place_meeting(x + xspd, y, obj_ground){ // land horizontal collisions
	while !place_meeting(x + sign(xspd), y, obj_ground){
		x += sign(xspd)
	}
	sprite_index = spr_idle
	xspd = 0
}

if place_meeting(x, y + yspd, obj_ground){ // land vertical collisions
	while !place_meeting(x, y + sign(yspd), obj_ground){
		y += sign(yspd)
	}
	sprite_index = spr_idle
	yspd = 0
}

x += xspd
y += yspd

// Spell casting
if spell_cast{
	instance_create_depth(x, y, 0, attack)
}

