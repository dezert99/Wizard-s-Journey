//This is yanxin changing this up woooooo

// Movement mechanics
left = keyboard_check(left_key)
right = keyboard_check(right_key)
jump = keyboard_check_pressed(jump_key)
grounded = place_meeting(x, y+1, obj_ground) or place_meeting(x, y+1, obj_slime)
spell_cast = keyboard_check_pressed(cast_key)
colliding_with_player = collision_rectangle(x-22,y+38,x+15, y+26,obj_player_controls,false, true);

//End Room
if room == rm_game_over{
	mana = 100
}

//hit
if(hit){
	audio_play_sound(snd_hit, 1, false)
	mana -= damage;
	damage = 0;
	hit = false;
	invincible = true;
	invincible_timer = invincible_timer_max;
}


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
	if(colliding_with_player && colliding_with_player.y-y >=25 && colliding_with_player.y-y <= 64){
		colliding_with_player.yspd = 6;
		jumps_left++;
	}
	if(jumps_left > 0){
		audio_play_sound(snd_jump, 1, false)
		yspd = -12
		jumps_left--;
	}
}

//Knockback

if(knockback_timer > 0){
	knockback_timer--;
	xspd = 1.25*mspd*knockback_direction;
	knockback = true;
}
else{
	knockback = false;
	knockback_direction = 0;
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

if(!frozen && !finished && !dead){
	x += xspd
	y += yspd	
}
else{
	xspd = 0;
	yspd = 0;
}

// Spell casting
if (spell_cast and mana > 5 && can_cast && !frozen){
	inst = instance_create_depth(x, y, 0, attack)
	audio_play_sound(snd_attack, 1, false)
	if(image_xscale == -1) { // player facing left){
		inst.travel_direction = "left"
		
	}
	else {
		inst.travel_direction = "right"	
	}
	if(attack_type == "damage"){
		inst.damage = spell_damage;
	}
	inst.attack_type = attack_type;
	inst.ignore = id;
	inst.damage = spell_damage;
	mana -= 5;
	can_cast = false;
	cast_timer = cast_timer_max;
	
}

// Invincibility
if invincible_timer > 0{
    invincible_timer -= 1
    invincible = true
} else{
	if(dead){
		y= -100000;	
	}
    invincible = false
}

// Freeze
if frozen_timer > 0{
    frozen_timer -= 1
    frozen = true
	image_speed = 0;
} else{
    frozen = false
	image_speed = 1;
}

// Cast
if cast_timer > 0{
    cast_timer -= 1
	can_cast = false;
} else{
    can_cast = true
}
// Fallen
if (fallen_timer > 0 && !dead){
    fallen_timer -= 1
    fallen = true
} else{
	if(fallen == true && !dead){
		var telport = instance_nearest(x,y,obj_teleport_point);
		x = telport.x;
		y = telport.y;
		invincible = true;
		invincible_timer = invincible_timer_max;
		mana -= 20;
	}
	fallen = false
}

if(y<315 && !finished && !dead) and room != rm_game_over{
	var name = object_get_name(object_index);
	if(name == "obj_player_red"){
		WIN_ORDER[0] = WIN_POS;
	}
	else if(name == "obj_player_blue"){
		WIN_ORDER[1] = WIN_POS;
	}
	else if(name == "obj_player_yellow"){
		WIN_ORDER[2] = WIN_POS;
	}
	WIN_POS++;
	finished = true;
	LIVING--;
}

if (y > camera_get_view_y(view_camera[0]) + view_hport[0] && !fallen){ //if player is below the camera
    fallen = true;
	fallen_timer = fallen_timer_max;
}

if(mana <= 0 && !dead){
	dead = true;
	LIVING--;
}






