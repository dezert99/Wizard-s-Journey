// Player specific controls
left_key = ord("A")
right_key = ord("D")
jump_key = ord("W")

spr_idle = spr_player1_idle
spr_run = spr_player1_run
spr_jump = spr_player1_jump
spr_falling = spr_player1_falling

// Imported from parent
xspd = 0
yspd = 0
jumps_left = 2;

// Jump Mechanics
mspd = 5 // how fast player is able to move
grav = 0.5
grounded = place_meeting(x, y-1, obj_ground)

// Spell Cast
cast_key = vk_space
attack = obj_player_red_attack