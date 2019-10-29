event_inherited();

// Player specific controls
left_key = ord("J")
right_key = ord("L")
jump_key = ord("I")

spr_idle = spr_player3_idle
spr_run = spr_player3_run
spr_jump = spr_player3_jump
spr_falling = spr_player3_falling

// Imported from parent
xspd = 0
yspd = 0
jumps_left = 2;

// Jump Mechanics
mspd = 5 // how fast player is able to move
grav = 0.5
grounded = place_meeting(x, y-1, obj_ground)

// Spell Cast
cast_key = vk_shift
attack = obj_player_yellow_attack