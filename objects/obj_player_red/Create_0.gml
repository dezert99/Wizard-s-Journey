event_inherited();
// Player specific controls
left_key = ord("A")
right_key = ord("D")
jump_key = ord("W")

spr_idle = spr_player1_idle
spr_run = spr_player1_run
spr_jump = spr_player1_jump
spr_falling = spr_player1_falling
spr_indicator = spr_player1_indicator

// Spell Cast
cast_key = vk_space
attack = obj_player_red_attack

attack_type = "knockback";

//End Placement
random_place = random_range(768, 960)

//Sounds
snd_jump = snd_jump1
snd_hit = snd_jump1
snd_attack = snd_attack1