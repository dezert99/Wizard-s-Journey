x += spd * direc //direc is changed depending on if it is shot left (-1) or right (1)

if place_meeting(x, y, obj_player_controls){ //detects if there is a collision with ANY player
	var poof = instance_create_depth(x, y, 0, obj_poof)
	with poof{
		image_xscale = 0.25
		image_yscale = 0.25
		image_blend = make_color_rgb(219, 208, 178)
	}
	var player = instance_nearest(x, y, obj_player_controls) //detects who is being hurt
	with player{
		if not invincible{
            mana -= 10
            invincible_timer = 60
        }
	}
	instance_destroy()
}

if place_meeting(x, y, obj_ground){
	var poof = instance_create_depth(x, y, 0, obj_poof)
	with poof{
		image_xscale = 0.25
		image_yscale = 0.25
		image_blend = make_color_rgb(219, 208, 178)
	}
	instance_destroy()
}
