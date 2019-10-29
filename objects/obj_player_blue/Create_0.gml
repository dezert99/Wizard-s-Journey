// Player specific controls
left_key = vk_left
right_key = vk_right
jump_key = vk_up

spr_idle = spr_player2_idle
spr_run = spr_player2_run
spr_jump = spr_player2_jump
spr_falling = spr_player2_falling

// Imported from parent
xspd = 0
yspd = 0
jumps_left = 2;

// Jump Mechanics
mspd = 5 // how fast player is able to move
grav = 0.5
grounded = place_meeting(x, y-1, obj_ground)

// Spell Cast
cast_key = vk_enter
attack = obj_player_blue_attack