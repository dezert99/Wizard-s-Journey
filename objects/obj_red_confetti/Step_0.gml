x -= x_spd
y += y_spd

image_angle += tilt

if y > room_width+10 or x < -10{ 
	x = random_range(0, room_width+500)
	y = random_range(-200, -10)
}
