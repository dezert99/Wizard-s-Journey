randomize()

// Imported from parent
xspd = 0
yspd = 0
jumps_left = 2;

// Jump Mechanics
mspd = 5 // how fast player is able to move
grav = 0.5
grounded = place_meeting(x, y-1, obj_ground)

// Spell Casting
mana = 100
spell_damage = 10;
attack_type = "damage";

testCollideCount = 0;
d_draw_x = 10;
d_draw_y = 10;

frozen = false;
frozen_timer = 0
frozen_timer_max = 60

// Invincibility
invincible = false
invincible_timer = 0
invincible_timer_max = 60

knockback = false
knockback_direction = 1 // 1 right -1 left
knockback_timer = 0;
knockback_timer_max = 10;

// Fallen
fallen = false
fallen_timer = 0
fallen_timer_max = 60

// Cast
can_cast = true;
cast_timer = 0;
cast_timer_max = 60;

hit = true;
damage = 0;

finished = false;

dead = false;

LIVING++;


// End Plancement
placed = false