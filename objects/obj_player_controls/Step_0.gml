// Movement mechanics
left = keyboard_check(left_key)
right = keyboard_check(right_key)
jump = keyboard_check_pressed(jump_key)
grounded = place_meeting(x, y+1, obj_ground)
spell_cast = keyboard_check_pressed(cast_key)
colliding_with_player = collision_rectangle(x-22,y+38,x+15, y+26,obj_player_controls,false, true);

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

if (jump) { // player jumps
	if(colliding_with_player && colliding_with_player.y-y >=45 && colliding_with_player.y-y <= 64){
		testCollideCount++;
	}
	yspd = -12
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

if(!freeze){
	x += xspd
	y += yspd	
}
else{
	xspd = 0;
	yspd = 0;
}

if(keyboard_check(vk_escape)){
	freeze = true;
}
else{
	freeze = false;
}


// Spell casting
if spell_cast and mana > 5{
	instance_create_depth(x, y, 0, attack)
	mana -= 5
}



